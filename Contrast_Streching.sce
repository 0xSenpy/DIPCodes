clear all
clc

a=imread("skull.jpg")
a=double(a);
[row col]=size(a);
LT=input("Enter the lower theshold value:");
UT=input("Enter the Upper theshold value:");
for x=1:1:row 
    for y=1:1:col
        if a(x,y)<=LT
            b(x,y)=0.5*a(x,y);
        else if a(x,y)<=UT
                b(x,y)=2*(a(x,y)-LT)+0.5*LT;
         else b(x,y)=0.5*(a(x,y)-UT)+0.5*LT+2*(UT-LT);
             
         end
     end
  end
end

subplot(2,1,1)
imshow(uint8(a)) //convert 8 bit unsigned integer unit8(a) in mathlab
title('Orignal Image')
subplot(2,1,2)
imshow(uint8(b))
title("Image after contrast stretching")
