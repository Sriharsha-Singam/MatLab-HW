function narutoRun( run, back )
%NARUTORUN Summary of this function goes here
%   Detailed explanation goes here

    run1 = imread(run);
    back1 = imread(back);
    
    [r,c,p] = size(run1);
    back1 = imresize(back1,[r c]);
    
    R1 = run1(:,:,1);
    G1 = run1(:,:,2);
    B1 = run1(:,:,3);
    
    R = run1(1,1,1);
    G = run1(1,1,2);
    B = run1(1,1,3);
    
    equal = R1 == R & B1 == B & G1 == G;
    
    r = back1(:,:,1);
    g = back1(:,:,2);
    b = back1(:,:,3);
    
    R1(equal) = r(equal);
    G1(equal) = g(equal);
    B1(equal) = b(equal);
    
    
    
%     run1(isWhite) = back1(isWhite);
%     imshow(cat(3,R1,G1,B1))
    run1 = cat(3,R1,G1,B1);
    s = find(back == '.');
    back(s:end) = [];
    imgName = sprintf('RunAcross%sNarutoStyle.png',back);
    imwrite(run1,imgName);
end

