%%5.3
filas =240;
columnas=240;
corte=155;
modalidad=4;
% vol = zeros(filas, columnas,corte, modalidad);
metadata = nii_read_header('Brats17_2013_10_1_t1\Brats17_2013_10_1_t1.nii');
mri1 = nii_read_volume('Brats17_2013_10_1_t1\Brats17_2013_10_1_t1.nii');

% for i=1:155
%     imshow(mri1(:,:,i))
%     drawnow
% end