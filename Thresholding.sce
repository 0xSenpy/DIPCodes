clear all
clc

p=imread("C:\Users\admin\Downloads\DIP\skull.jpg");
a=double(p);

[row col]=size(a);

T=input("Enter value of Threshold :")

for i=1:1:row
    for j=1:1:col
        if(p(i,j)<T)
            
            a(i,j)=0;
        else
            a(i,j)=255;
        end
    end
end

figure(1);
imshow(p);

figure(2)
imshow(a);
