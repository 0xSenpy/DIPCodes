clear all
clc
p=imread("C:\Users\admin\Downloads\DIP\skull.jpg");
z=double(p);
pp=double(p)
[row,col]=size(p)
for i=1:1:row
    for j=1:1:col
        if((z(i,j)>50))&&(z(i,j)<150);
            z(i,j)=255;
        else
            z(i,j)=pp(i,j);
        end
    end         
end

figure(1);
imshow(p);
figure(2);
imshow(uint8(z));

