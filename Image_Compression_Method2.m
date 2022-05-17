clc
clear all

%Reference: http://dx.doi.org/10.5772/intechopen.75007

pkg load image
pkg load statistics
pkg load communications

I=imread('barbara_512.jpg');
I=double(I)+wgn(512,512,1,32000);
%I=rgb2gray(I);

X=[];

for i=1:64
  for j=1:64
    sub_matrix=I((1+8*(i-1)):8*i,(1+8*(j-1)):8*j);
    vector=[];
    for k=1:8
      vector=[vector sub_matrix(k,:)];
    endfor
    X=[X vector'];
  endfor
endfor
X=X';

temp=X';
mean1=mean(temp);
std1=std(temp);
temp=(temp-mean1)./std1;
U=temp';

[T N]=size(U);
sigma2=std2(U)^2;
Q=T/N;

l_max=sigma2*(1+(1/Q)+(2*sqrt(1/Q)));
l_min=sigma2*(1+(1/Q)-(2*sqrt(1/Q)));

S=U*U'/T;

[V1 Lambda1]=eig(S);
Lambda1=sum(Lambda1);

Size1=length(find(Lambda1>l_max));
Size2=length(find(Lambda1<l_min));

[V2 Lambda2]=eigs(S,Size1);
[V3 Lambda3]=eigs(S,Size2,'sm');
V=[V2 V3];

X_new=V*V'*U;
X_new=X_new';
X_new=(X_new.*std1)+mean1;

X_new=X_new';
I_new=zeros(512,512);

k1=1;
for i1=1:64
  for j1=1:64
    Vector=X_new(k1,:);
    sub_matrix=zeros(8,8);
    for l1=1:8
      sub_matrix(l1,:)=Vector((1+(l1-1)*8):l1*8);
    endfor
    I_new((1+(i1-1)*8):i1*8,(1+(j1-1)*8):j1*8)=sub_matrix;
    k1=k1+1;
  endfor
endfor

subplot(1,2,1)
I2=mat2gray(I);
imshow(I2)
subplot(1,2,2)
I_new1=mat2gray(I_new);
imshow(I_new1)

hist(Lambda1,100,1)