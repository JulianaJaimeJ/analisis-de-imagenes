clc;close all;clear all
metadata=nii_read_header('Brats17_2013_10_1_seg\Brats17_2013_10_1_seg.nii');
mril=nii_read_volume('Brats17_2013_10_1_seg\Brats17_2013_10_1_seg.nii');
