%% Punto 8

circles = imread('coins.png');

mascara = uint8(ones( size(circles,1 ), size( circles, 2) )); 

A = and(circles, mascara);

B = or(circles, mascara);

C = xor(circles, mascara);

subplot(2,2,1);

imshow(circles);

subplot(2,2,2);

imshow(A);

subplot(2,2,3);

imshow(B);

subplot(2,2,4);

imshow(C);