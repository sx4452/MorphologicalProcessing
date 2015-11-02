function MorphologicalProcessingBwhitmiss
I = imread('black.png');
I = logical(rgb2gray(I));
num_white = 20;
[M,N] = size(I);
for i = 1:20
    row = randi(M);
    col = randi(N);
    size_white = randi(5);
    white = ones(size_white);
    I(row,col)
end

imwrite(I, 'newblack.jpg');



end