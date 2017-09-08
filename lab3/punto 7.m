%% Punto 7

coins = imread('coins.png');

mascara = uint8(ones( size(coins,1 ), size( coins, 2)  )); 

diametro = 0;
dim =0;
if( size(coins,1 ) > size(coins,2 ) )
    diametro = size(coins,2 );
    dim = 2;
else 
    diametro = size(coins,1);
    dim = 1;
end

mid1 = idivide(int32(size(coins,1)),int32(2), 'floor');

mid2 = idivide(int32(size(coins,2)),int32(2), 'floor');

m = mid1;
m2 = mid1;
n = 0;

for i=1:size(mascara,1)
    
    for j = 1:size(mascara,2)
        if( j > m ) || ( j < m2)
            mascara(i,j) = 0; 
        end
    end
    
    n = n+1;
    
    if(n < mid1)
        m = m+1;
        m2 = m2 - 1;
    else
        m = m-1;
        m2 = m2+1;
    end
    
end

new = immultiply(mascara, coins);

imshow(new);
