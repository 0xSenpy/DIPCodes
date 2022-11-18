a = imread('skull.jpg')
a=double(a)
c=a 
a = a+1;
b= max(a); 
i = input("Enter the number of bits : "); 
j = b/(2^i);
f1 = floor(a/j+1);
f2 = (f1*255)/max(f1);
figure(1);
imshow(uint8(c)); 
figure(2);
imshow(uint8(f2));
