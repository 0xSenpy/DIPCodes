clear all
clc

a=imread("skull.jpg");
a=double(a);
c = []
r=input('Which bit image do you want to see 1=MSB 8=LSB:');
[row col]=size(a);
for x=1:1:row
    for y=1:1:col
        c=dec2bin(a(x,y),8);
        d = part(c, r);
        
            if d == '1' then
                w(x,y)=255;
            else
                w(x,y)=0;
        end
    end              
end

figure(1);
imshow(uint8(a));
figure(2);
imshow(uint8(w));
