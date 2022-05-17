clc
clear all

%Reference: http://faculty.salina.k-state.edu/tim/DAT/_downloads/Principal_Component_Analysis_Tutorial.pdf

pkg load image %to run mat2gray

k=10;
I=imread('256.jpg');
I=rgb2gray(I);
X=double(I);

temp=mean(X);
D=X-temp;
Sigma=(1/(256-1))*D*D';
[V Lambda]=eig(Sigma);
W=V(:,1:k);

I_new=(W*W'*D)+temp;
a=mat2gray(I_new);
imshow(a)