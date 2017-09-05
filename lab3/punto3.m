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

