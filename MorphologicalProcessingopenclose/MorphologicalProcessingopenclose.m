function MorphologicalProcessingopenclose
I = imread('wordbook.png');
I = rgb2gray(I);
I = im2double(I);
I(I>0.9) = 1;
I(I<=0.9) = 0;
I = logical(I);

SEdiamond = strel('diamond', 3);
SEdisk = strel('disk', 3, 0);
SEline = strel('line', 3, 0);
SEoctagon = strel('octagon', 3);
SEpair = strel('pair', [3, 3]);
SEperiodicline = strel('periodicline', 3, [1, -2]);
SErectangle = strel('rectangle', [3, 2]);
SEsquare = strel('square', 3);
SEarbitrary = strel('arbitrary',[1 0 0; 1 0 0; 1 0 1]);

name = {'diamond', 'disk', 'line', 'octagon', 'pair', 'periodicline', 'rectangle', 'square', 'arbitrary'};
for i = 1:9
    outname = strcat('I', name{i});
    SEname = strcat('SE', name{i});
    eval(strcat(outname,' = imclose(I,', SEname, ');'));
    outfilename = strcat('wordbookclose',name{i},'.jpg');
    eval(strcat('imwrite(', outname, ',outfilename);'));
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


