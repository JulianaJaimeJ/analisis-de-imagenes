clc;clear all;close all
archivo=dir(fullfile(toolboxdir('images'),'imdata'));

archivo(1)=[];
archivo(1)=[];

img=imread(archivo(14).name);imshow(img);pause
imgn=im2bw(img,0.5);imshow(imgn);pause

lua=imread(archivo(53).name);imshow(lua);pause
luna=im2bw(lua,0.09);imshow(luna);pause


