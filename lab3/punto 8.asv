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