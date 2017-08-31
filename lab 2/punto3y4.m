%% 5.3 Visualizar los canales de un MRI
clc
close all
clear all
%Se leen los metadatos de la modalidad T1 para hallar el valor de las
%filas, columnas y cortes
metadata = nii_read_header('Brats17_2013_10_1_t1\Brats17_2013_10_1_t1.nii');
filas= metadata.Dimensions(1);
columnas= metadata.Dimensions(2);
cortes= metadata.Dimensions(3);
modalidades= metadata.Dimensions(4)+metadata.Dimensions(5)+metadata.Dimensions(6)+metadata.Dimensions(7);
vol = single(zeros(filas, columnas,cortes, modalidades));


%Se leen los archivos de todas las modalidades
mriT1 = nii_read_volume('Brats17_2013_10_1_t1\Brats17_2013_10_1_t1.nii');
mriT1ce = nii_read_volume('Brats17_2013_10_1_t1ce\Brats17_2013_10_1_t1ce.nii');
mriT2 = nii_read_volume('Brats17_2013_10_1_t2\Brats17_2013_10_1_t2.nii');
mriFlair= nii_read_volume('Brats17_2013_10_1_flair\Brats17_2013_10_1_flair.nii');

%Se llena el campo de t1 en vol
for k=1:cortes %Recorre todos los cortes
    for i=1:filas %Recorre todas las filas
        for j=1:columnas %Recorre todas las columnas
            vol(i,j,k,1) = mriT1(i,j,k); %Se trasfiere la información de mriT1 a vol
        end
    end
end
%

%Se llena el campo de T1ce en vol
%Se lee el archivo de la modalidad T1ce

%Para cada corte en la matriz de T1 se transfieren los datos a vol
for k=1:cortes%Recorre todos los cortes
    for i=1:filas%Recorre todas las filas
        for j=1:columnas%Recorre todas las columnas
            vol(i,j,k,2) = mriT1ce(i,j,k); %Se trasfiere la información de mriT1 a vol
        end
    end
end
%

%Se llena el campo de T2 en vol
%Se lee el archivo de la modalidad T2

for k=1:cortes%Recorre todos los cortes
    for i=1:filas%Recorre todas las filas
        for j=1:columnas%Recorre todas las columnas
            vol(i,j,k,3) = mriT2(i,j,k); %Se trasfiere la información de mriT1 a vol
        end
    end
end
%

%Se llena el campo de Flair en vol
%Se lee el archivo de la modalidad Flair

for k=1:cortes%Recorre todos los cortes
    for i=1:filas%Recorre todas las filas
        for j=1:columnas%Recorre todas las columnas
            vol(i,j,k,4) = mriFlair(i,j,k); %Se trasfiere la información de mriT1 a vol
        end
    end
end

%Se muestran las 4 modalidades al tiempo
for i =1:cortes %Se recorren todos los cortes
    %Se divide el plano en 4 espacios para cada modalidad
    subplot(2,2,1); 
    imshow(vol(:,:,i,1), [200 500]); %Se muestra la modalidad T1
    title('T1')
    subplot(2,2,2);
    imshow(vol(:,:,i,2), [200 600]);%Se muestra la modalidad T1ce
    title('T1ce')
    subplot(2,2,3);
    imshow(vol(:,:,i,3), [100 800]);%Se muestra la modalidad T2
    title('T2')
    subplot(2,2,4);
    imshow(vol(:,:,i,4), [0 600]);%Se muestra la modalidad Flair
    title('Flair')
    drawnow
end

%% 5.3.6 Generalización del código 
%Para poder generalizar el código debería recibirse como parámetros de una
%función los datos num y agno.

num = int2str(18); %Se recibe por parámetro
agno = int2str(2018); %Se recibe opr parámetro
raiz = 'Brats';
termiancion = '_10_1_';
separador = '_';
extension = '.nii';

%Se leen los metadatos de la modalidad T1 para hallar el valor de las
%filas, columnas y cortes

carpetaT1 = strcat(raiz, num, separador,agno,termiancion, 't1');
rutaT1 = strcat(carpetaT1, '\', carpetaT1, extension) %Se costruye la ruta a partir de los parámetros

carpetaT1ce = strcat(raiz, num, separador,agno,termiancion, 't1ce');
rutaT1ce = strcat(carpetaT1ce, '\', carpetaT1ce, extension) %Se costruye la ruta a partir de los parámetros

carpetaT2 = strcat(raiz, num, separador,agno,termiancion, 't2');
rutaT2 = strcat(carpetaT2, '\', carpetaT2, extension) %Se costruye la ruta a partir de los parámetros

carpetaFlair = strcat(raiz, num, separador,agno,termiancion, 'flair');
rutaFlair = strcat(carpetaFlair, '\', carpetaFlair, extension) %Se costruye la ruta a partir de los parámetros


% metadata = nii_read_header(rutaT1);
% filas= metadata.Dimensions(1);
% columnas= metadata.Dimensions(2);
% cortes= metadata.Dimensions(3);
% modalidades= metadata.Dimensions(4)+metadata.Dimensions(5)+metadata.Dimensions(6)+metadata.Dimensions(7);
% vol = single(zeros(filas, columnas,cortes, modalidades));

 
% Se leen los archivos de todas las modalidades

% mriT1 = nii_read_volume(rutaT1);
% mriT1ce = nii_read_volume(rutaT1ce);
% mriT2 = nii_read_volume(rutaT2);
% mriFlair= nii_read_volume(rutaFlair);

%% 5.4 Visualizar los canales de un MRI
clc
clear all
%Se leen los metadatos de la modalidad T1 para hallar el valor de las
%filas, columnas y cortes
metadata = nii_read_header('Brats17_2013_10_1_seg\Brats17_2013_10_1_seg.nii');
filas= metadata.Dimensions(1);
columnas= metadata.Dimensions(2);
cortes= metadata.Dimensions(3);
modalidades= metadata.Dimensions(4)+metadata.Dimensions(5)+metadata.Dimensions(6)+metadata.Dimensions(7);
vol = single(zeros(filas, columnas,cortes, modalidades));

mriSeg= nii_read_volume('Brats17_2013_10_1_seg\Brats17_2013_10_1_seg.nii');

%Se llena el campo de t1 en vol
for k=1:cortes %Recorre todos los cortes
    for i=1:filas %Recorre todas las filas
        for j=1:columnas %Recorre todas las columnas
            vol(i,j,k,1) = mriSeg(i,j,k); %Se trasfiere la información de seg a vol
        end
        end
end

[an,al,pr]=size(vol);
for i =1:pr %Se recorren todos los cortes
    s=vol(:,:,i);
    %Se divide el plano en 4 espacios para cada modalidad
    a=subplot(2,2,1); 
    colormap(a,autumn);
    imshow(s,[]); %Se muestra la modalidad autumn
    drawnow
    
    b=subplot(2,2,2);
    colormap(b,winter);
    imshow(s,[]);%Se muestra la modalidad winter 
    drawnow
    
    c=subplot(2,2,3);
    colormap(c,spring);
    imshow(s,[]);%Se muestra la modalidad spring
    drawnow
    
    d=subplot(2,2,4);
    colormap(d,summer);
    imshow(s,[]);%Se muestra la modalidad summer
    drawnow
end
