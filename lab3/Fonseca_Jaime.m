%% Punto 1


%% Punto 2


%% Punto 3

flash = imread('toysflash.png');
noflash = imread('toysnoflash.png');

resta = imsubtract(flash, noflash);

resta2 = imsubtract(noflash, flash);

abs = imabsdiff( flash, noflash );

abs2 = imabsdiff( noflash, flash);

subplot(2,3,1);
imshow(flash);
title('(A)toysflash original');


subplot(2,3,2);
imshow(noflash);
title('(B)toysnoflash original');

subplot(2,3,3);
imshow(resta);
title('(C)toysflash - toysnoflash');

subplot(2,3,4);
imshow(resta2);
title('(D)toysnoflash - toysflash');

subplot(2,3,5);
imshow(abs);
title('(E)imabsdiff(toysflash, toysnoflash)');

subplot(2,3,6);
imshow(abs2);
title('(F)imabsdiff(toysnoflash, toysflash)');

%% Punto 5


%% Punto 6

cameraman = imread('cameraman.tif');

rice = imread('rice.png');

mult = immultiply(rice, cameraman);

subplot(1,3,1);
imshow(cameraman);
title('Cameraman original');

subplot(1,3,2);
imshow(rice);
title('Rice original');

subplot(1,3,3);
imshow(mult);
title('Multiplicación de imágenes');

%% Punto 7

coins = imread('coins.png');

mascara = uint8(ones( size(coins,1 ), size( coins, 2)  )); 

diametro = 0;
dim =0;
if( size(coins,1 ) > size(coins,2 ) )
    diametro = size(coins,2 );
    dim = 2;
else 
    diametro = size(coins,1);
    dim = 1;
end

mid1 = idivide(int32(size(coins,1)),int32(2), 'floor');

mid2 = idivide(int32(size(coins,2)),int32(2), 'floor');

m = mid1;
m2 = mid1;
n = 0;

for i=1:size(mascara,1)
    
    for j = 1:size(mascara,2)
        if( j > m ) || ( j < m2)
            mascara(i,j) = 0; 
        end
    end
    
    n = n+1;
    
    if(n < mid1)
        m = m+1;
        m2 = m2 - 1;
    else
        m = m-1;
        m2 = m2+1;
    end
    
end

new = immultiply(mascara, coins);

imshow(new);


%% Punto 8

coins = imread('coins.png');

mascara = uint8(ones( size(coins,1 ), size( coins, 2) )); 

A = and(coins, mascara);

B = or(coins, mascara);

C = xor(coins, mascara);

subplot(2,2,1);

imshow(coins);

title('Original');

subplot(2,2,2);

imshow(A);

title('Operación And');

subplot(2,2,3);

imshow(B);

title('Operación Or');

subplot(2,2,4);

imshow(C);

title('Operación Xor');

%% Punto 9



%% Punto 10



%% Punto 12

archivos = dir(fullfile(toolboxdir('images'),'imdata', '*.png'));

randomNum = randi([1 28],1,6);
fileNames = cell(6,1);

%archivos(randomNum(i)).name

for i = 1:6
    fileNames{i} = archivos(randomNum(i)).name;
end

montage(fileNames);