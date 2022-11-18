clear all
clc
a=imread("almonds.jpg")
a=rgb2gray(a)
[row,col]=size(a)
total=row*col
h=imhist(a)
pdf=h/total
cdf=cumsum(pdf)
new=round(cdf*255)
nimg=new(a)
z=imhist(nimg,255)
figure(1)
imshow(uint8(nimg))
figure(2)
bar(z)
figure(3)
bar(h)
figure(4)
imshow(a)
