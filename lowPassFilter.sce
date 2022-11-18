clear
clc

img = imread('C:/Users/hrc/Desktop/MTB/images/chess.jpg')

[rows cols] = size(img)

res = img

for i = 2:rows-1
    for j = 2:cols-1
        disp(i, j)
        maskSum = sum(int32(img(i-1:i+1, j-1:j+1)))
        res(i, j) = uint8(maskSum / 9)
    end
end

imshow(res)
