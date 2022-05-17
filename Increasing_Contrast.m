%increasing contrast by subtracting by mean and dividing by standard deviation
%Method works well

clc
clear all

pkg load image

I=imread('1.jpg');
I=rgb2gray(I);
I=double(I);
[m n]=size(I);

mean=sum(sum(I))/(m*n);
stan=std2(I);

I1=(I-mean)/stan;

set(gca,'FontSize',20)

I1=mat2gray(I1);

subplot(2,1,2)
imshow(I1)
title('Increased Contrast','FontSize',20)

subplot(2,1,1)
imshow('1.jpg')
title('Original Image','FontSize',20)