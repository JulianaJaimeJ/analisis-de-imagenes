%% Punto 12

archivos = dir(fullfile(toolboxdir('images'),'imdata'));

randomNum = randi([3 100],1,6);
fileNames = cell(6,1);

%archivos(randomNum(i)).name

for i = 1:6
    fileNames{i,1} = archivos(randomNum(i)).name;
end

montage(fileNames, 'Size', [3 2]);
