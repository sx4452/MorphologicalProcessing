function MorphologicalProcessing
A = imread('zhang.png');
B = imread('ben.png');
A = logical(rgb2gray(A));
B = logical(rgb2gray(B));
imwrite(A, 'zhangLogical.jpg');
imwrite(B, 'benLogical.jpg');

A_a = ~A;
B_a = ~B;
imwrite(A_a, 'zhang_a.jpg');
imwrite(B_a, 'ben_a.jpg');

AandB = A&B;
imwrite(AandB, 'zhangandben.jpg');

AorB = A|B;
imwrite(AorB, 'zhangorben.jpg');

AandVB = A&~B;
imwrite(AandVB, 'zhangandVben.jpg');

VAandB = ~A&B;
imwrite(VAandB, 'Vzhangandben.jpg');

end




