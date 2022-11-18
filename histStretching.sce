clear all
clc
a=imread("almonds.jpg")
a=rgb2gray(a)
[row,col]=size(a)
w=min(a)
constant=255/(max(a)-min(a))
c=constant.*(a-w)
disp(a)
h1=imhist(a)
h2=imhist(c)
figure(1)
imshow(a)
figure(2)
bar(h1)
figure(3)
imshow(c)
figure(4)
bar(h2)