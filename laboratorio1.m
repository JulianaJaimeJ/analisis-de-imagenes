%%5.1
x = imread('cat.jpg');
imshow(x);
pause

I = rgb2gray(x);
imshow(I);
pause

imhist(x);
pause
imhist(I);
pause

%%5.2