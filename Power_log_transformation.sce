clear all
clc

img1=imread("skull.jpg");
[row,col]=size(img1);
gamma=input('Enter the correction factor:');
img=double(img1);
nuimg=img.^gamma
numax=max(nuimg);
numin=min(nuimg);

n=255/(numax-numin);
nuimg1=n.*(nuimg-numin);                                   
 

nuimg2=uint8(nuimg1);
subplot(2,1,1)
imshow(img1)
title('Orginal Image')
subplot(2,1,2)
imshow(nuimg2)
title("Image after power transformation")
