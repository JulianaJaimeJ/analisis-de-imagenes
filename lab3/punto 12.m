%% Punto 12

archivos = dir(fullfile(toolboxdir('images'),'imdata', '*.png'));

randomNum = randi([1 28],1,6);
fileNames = cell(6,1);

%archivos(randomNum(i)).name

for i = 1:6
    fileNames{i} = archivos(randomNum(i)).name;
end

montage(fileNames);


 