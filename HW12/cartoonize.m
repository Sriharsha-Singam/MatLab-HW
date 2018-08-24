function cartoonize( in1, in2 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    img = imread(in1);
    img = double(img);
    img1 = double(img);
    img1 = round(img1./in2).*in2;
    
    in1 = sprintf('cartoon_%s',in1);
    imwrite(uint8([img img1]),in1);

end

