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