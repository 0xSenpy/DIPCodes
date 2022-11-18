clear all
clc
a=imread('almonds.jpg')
a=rgb2gray(a)
a=double(a)
[row,col]=size(a)
x=1
for i=1:row
    disp(x)
    b(x,:)=a(i,:)
    b(x+1,:)=a(i,:)
    x=x+2
end
figure(1)
imshow(uint8(a))
figure(2)
imshow(uint8(b))

