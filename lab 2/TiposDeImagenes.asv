clc;clear all;close all
archivo=dir(fullfile(toolboxdir('images'),'imdata'));

archivo(1)=[];
archivo(1)=[];
% parte 1
img=imread(archivo(14).name);imshow(img);pause
imgn=im2bw(img,0.5);imshow(imgn);pause
% parte 2
lua=imread(archivo(53).name);imshow(lua);pause
luna=im2bw(lua,0.09);imshow(luna);pause

% parte 3
load trees
figure(2)
subplot(1,2,1)
imagesc(X)
subplot(1,2,2)
image(X)
pause

figure(3)
subplot(1,2,1)
imshow(X,map)
subplot(1,2,2)
image(X);colormap(map);colorbar;
%parte 4
rgb=ind2rgb(X,map);
imwrite(rgb,'Punto4.png');