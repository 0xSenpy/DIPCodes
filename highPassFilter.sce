clear
clc

img = imread('C:/Users/hrc/Desktop/MTB/images/photographer.jpg')

img = double(rgb2gray(img))

[rows cols] = size(img)

res = img

mask = [-1 -1 -1; -1 8 -1; -1 -1 -1]

for i = 2:rows-1
    for j = 2:cols-1
        disp(i, j)
        maskSum = sum(mask .* img(i-1:i+1, j-1:j+1))
        
        if maskSum >= 0 then
            res(i, j) = maskSum
        else
            res(i, j) = 0
        end
    end
end

res = uint8(res)

imshow(res)
