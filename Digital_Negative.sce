clear all 
clc
a = imread("skull.jpg");

c = 255;
b = c-a;
figure(1)
imshow(a)
figure(2)
imshow(b)
