clear all
clc

aa=imread("skull.jpg");
a=double(aa);
[row,col]=size(a);
for x=1:1:row
    for y=1:1:col
        c(x,y)=aa(x,y)*((-1)^(x+y));
    end    
end
c=double(c)
d=abs(fft2(c));
d_log=log(1+d);
figure(1);
imshow(uint8(d));
figure(2);
imshow(uint8(d_log));
