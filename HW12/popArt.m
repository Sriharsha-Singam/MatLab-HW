function popArt( imgName )
%POPART Summary of this function goes here
%   Detailed explanation goes here

    finalImg = [];
    img = imread(imgName);
    img1 = 255-img;
%     img1 = img1(end:-1:1,end:-1:1,:);
    
    img2 = img(:,end:-1:1,:);
    img2 = img2(:,:,[3 2 1]);
    
    img3 = double(img);
    avg =(img3(:, :, 1)+img3(:, :, 2)+img3(:, :, 3))./3;
    gray(:, :, 1) = avg; 
    gray(:, :, 2) = avg;
    gray(:, :, 3) = avg;
    img3 = uint8(gray);  
    
    img4 = permute(img(end:-1:1,:,:),[2 1 3]);

    finalImg = [img2,img1;img3,img4];
    
    s = find(imgName == '.');
    imgName(s:end) = []
    imgName = sprintf('%s_pop.png',imgName)
    imwrite(finalImg,imgName);

end

