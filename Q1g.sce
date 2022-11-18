
clear all
clc
a=imread('OIP.jpg')
[row,col]=size(a)
r=zeros(row,col,3)
g=zeros(row,col,3)
b=zeros(row,col,3)
b(:,:,3)=a(:,:,3)
r(:,:,1)=a(:,:,1)
g(:,:,2)=a(:,:,2)
figure(1)
imshow(a)
figure(2)
imshow(uint8(r))
figure(3)
imshow(uint8(g))
figure(4)
imshow(uint8(b))
c=r+g+b
figure(5)
imshow(uint8(c))
//b=im2bw(a,.5) for e part
