%% 5.1
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

%% 5.2
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

%% 5.3
archivo = dir('CT_Data'); %Se crea la estructura de archivos
archivo(1) = []; %Se eliminan los dos primeros campos que
archivo(1) = []; %no son archivos
nombres = {archivo.name}; %Se crea un arreglo con los nombres de los archivos
info = cell(1,size(nombres,ndims(nombres))); %Se crea una arreglo de celdas para guardar los elementos dicominfo
for i=1:size(nombres,ndims(nombres))
   info(1,i) = {dicominfo(strjoin(strcat('CT_Data/',nombres(i))))}; %Se crea un elemento dicominfo para cada archivo
end

A = zeros(512,512,267); %Se crea estructura para guardar todos los cortes 
for k=1:267
    pos = info{1,k}.InstanceNumber; %Se conoce la posición del corte
    img = dicomread(info{1,k});
    for i=1:512
        for j=1:512
            A(i,j,pos) = img(i,j); %Se inserta en la posición real del corte
        end
    end
end
% 
% %Se muestran todas las imágenes de manera dinámica para el eje z
% figure(1)
% title('Tomografía en el eje z');
% for i =1:267
%     imshow(A(:,:,i),[0 300])
%     drawnow
% end
% pause
% 
% %Se convierte la matriz original para obtener los cortes del eje x
% y=zeros(512,267,512);
% for k = 1:512
%     x=A(k,:,:);
%     for i =1:512
%         for j=1:267
%             y(i,j,k)=x(1,i,j);
%         end
%     
%     end
% end
% %% cdcdc
% %Se muestran todas las imágenes de manera dinámica para el eje z
% figure(2)
% title('Tomografía en el eje x');
% for i = 1:512
%     imshow(y(:,:,i),[0 300])
%     drawnow
% end
    
