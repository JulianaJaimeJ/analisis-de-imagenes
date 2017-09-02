%% Tutorial
cameraman = imread('cameraman.tif');
saturn = imresize(rgb2gray(imread('saturn.png')), size(cameraman));

suma = imadd(cameraman, saturn);
resta = imsubtract(cameraman, saturn);
resta2 = imsubtract(saturn, cameraman);
mult = immultiply(cameraman,saturn);    

figure(1);
subplot(2,3,1);
imshow(cameraman);
title('cameraman');

subplot(2,3,2);
imshow(saturn);
title('saturn');

subplot(2,3,3);
imshow(suma);
title('suma');

subplot(2,3,4);
imshow(resta);
title('cameraman - saturn');

subplot(2,3,5);
imshow(resta2);
title('saturn - cameraman');

subplot(2,3,6);
imshow(mult);
title('multiplicación');

pause;

figure(2);
subplot(1,2,1);
onion = imread('onion.png');
imshow(onion);
title('original');

M = [ 0.45, 0.25, 0.10 ];
subplot(1,2,2);
imshow(imapplymatrix(M,onion));
title('modificación');


%% 6.2 

%6.2.1
lirio = imread('yellowlily.jpeg');


pause;

%6.2.2
