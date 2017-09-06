%% Punto 6

cameraman = imread('cameraman.tif');

rice = imread('cameraman.tif');

mult = immultiply(cameraman, rice);

imshow(mult)