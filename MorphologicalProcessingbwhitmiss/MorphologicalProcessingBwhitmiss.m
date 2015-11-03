function MorphologicalProcessingBwhitmiss
I = imread('black.png');
I = logical(rgb2gray(I));
num_white = 20;
[M,N] = size(I);
for i = 1:num_white
    row = randi(M);
    col = randi(N);
    size_white = randi(5);
    white = ones(size_white,size_white);
    I(row:row+size_white-1,col:col+size_white-1) = white;
end
imwrite(I, 'newblack.jpg');
end