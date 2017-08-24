%% primera parte
x=imread('images.jpeg');
figure(1)
imshow(x)
pause
%plot(x)
%obtencion del histograma
I=rgb2gray(x);

figure(2)
imshow(I)
pause
%imhist(x)
pause
%histogram(hist,255)
imhist(I);
pause

r=x(:,:,1);
g=x(:,:,2);
blue=x(:,:,3);

figure(3)

subplot(2,2,1)
title('original')
imshow(x)
subplot(2,2,2)
title('rojos')
imshow(r)
subplot(2,2,3)
title('verdes')
imshow(g)
subplot(2,2,4)
title('Azules')
imshow(blue)

%% parte 2
clc
z=imread('tumor.png');
z1=rgb2gray(z);
[b,n]=imhist(z,100);
%recreacion imagen original
figure(4)
bar(b)
figure(5)
imshow(z1)
%descompocicion de la imagen

%recreacion por medio de toolbox de matlab
zn=im2bw(z1,0.6);
figure(6)
imshow(zn)
%codigo de recreacion
pos=find(z1>=250);

znew=z1(pos);
figure(7)
imshow(znew)

%% parte 3
archivo = dir('CT_Data');

% info = dicominfo(strcat('CT_Data/',archivo(3).name))