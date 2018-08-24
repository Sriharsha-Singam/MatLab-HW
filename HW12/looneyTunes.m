function looneyTunes( file, page, instr )
%LOONEYTUNES Summary of this function goes here
%   Detailed explanation goes here

    files = {}
    for i = 1:page
        files = [files,sprintf('%s_page%d.png',file,i)]
    end
    img = {}
    for i = 1:page
        image = double(imread(files{i}));
        sizes = size(image)
        num = ((sizes(1)/instr));
        for j = 1:instr
                round(num*(j-1))
                newIm = (image(round(num*(j-1)+1):round(num*j),:,:));
                img{i,j} = uint8(newIm);
        end
            
    end

    for i = 1:instr
        im = []
        for j = 1:page
            
            im = [im ;img{j,i}];
        end
        fileName = sprintf('%s_part%d.png',file,i);
        imwrite((im),fileName);
    end
    
end

