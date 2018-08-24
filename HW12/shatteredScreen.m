function shatteredScreen( images, name )
%SHATTEREDSCREEN Summary of this function goes here
%   Detailed explanation goes here

    overall = images
    name
    
    [r,c] = size(images)

    top = {};
    bottom = {};
    right = {};
    left = {};
    finalImg = [];

    while length(images) > 1
        length(images);
        finalImg = images{1};
        
        images(1) = [];
 
        [r,c] = size(images);
        top = {};
        bottom = {};
        right = {};
        left = {};
        for col = 1:c
                img1 = images{col};
                top = [top img1(1,:,:)];
                bottom = [bottom img1(end,:,:)];
                right = [right img1(:,end,:)];
                
                left = [left img1(:,1,:)];
                length(left);
        end
         
        img = finalImg;
        dim = size(finalImg);
        l = 0;
        while l < length(images)
            l = l+1;
            dim1 = size(images{l});
            
            if dim(1) == dim1(1)
                sprintf('dim1')
                if isequal(right{l},finalImg(:,1,:))
                    sprintf('right')
                    finalImg = cat(2,images{l} ,finalImg);
                    images(l) = []
                elseif isequal(left{l},finalImg(:,end,:))
                    sprintf('left')
                    finalImg = cat(2,finalImg, images{l});
%                     imshow(finalImg)
                    images(l) = []
                end
            end
            top = {};
            bottom = {};
            right = {};
            left = {};
            [r,c] = size(images);
            for col = 1:c
                img1 = images{col};
                top = [top img1(1,:,:)];
                bottom = [bottom img1(end,:,:)];
                right = [right img1(:,end,:)];
                left = [left img1(:,1,:)];
            end
            if dim(2) == dim1(2)
                sprintf('dim2')
                if isequal(top{l},finalImg(end,:,:))
                    sprintf('top')
                    finalImg = cat(1,finalImg , images{l});
                    images(l) = []
                elseif isequal(bottom{l},finalImg(1,:,:))
                    sprintf('bottom')
                    finalImg = cat(1,images{l}  , finalImg);
                    images(l) = []
                end
            end
            top = {};
            bottom = {};
            right = {};
            left = {};
            [r,c] = size(images)
            for col = 1:c
                img1 = images{col};
                top = [top img1(1,:,:)];
                bottom = [bottom img1(end,:,:)];
                right = [right img1(:,end,:)];
                left = [left img1(:,1,:)];
            end
        end
        finalImg;
        images = [images finalImg];

    end    
        
        
        
% imshow(images{1})
    imwrite(uint8(images{1}),[name,'.png'])
end

