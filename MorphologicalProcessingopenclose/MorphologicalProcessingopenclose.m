function MorphologicalProcessingopenclose
I = imread('wordbook.png');
I = logical(rgb2gray(I));
SEdiamond = strel('diamond', 10);
SEdisk = strel('disk', 10, 0);
SEline = strel('line', 10, 0);
SEocragon = strel('octagon', 10);
SEpair = strel('')


end
%I = im2double(I);
%{
thr = [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9];
for i = 1:9
    I_out = I;
    I_out(I_out>thr(i)) = 1;
    I_out(I_out<=thr(i)) = 0;
    I_out = logical(I_out);
    writename = ['wordbookthr',int2str(i),'.jpg'];
    imwrite(I_out, writename);
end
%}


