function [ det ] = determinant( mtx )

    det = 0;

    [row,~] = size(mtx);
    
    [1 8 4; 5 1 7; 2 9 6]
    if row == 2
        det = (mtx(1,1).*mtx(2,2) - mtx(1,2).*mtx(2,1))
    else
        for l = 1:length(mtx);
            num = ((-1)^(1+l)).*mtx(1,l);
            com = mtx;
            com(1,:) = [];
            com(:,l) = []
            det = det + num.*determinant(com);
        end
    end
end


% function [ det ] = two( com )
%     [~,col] = size(com)
%     com
%      det  = twod( com, col ,[]);
% end
% 
% 
% function [ det ] = twod( com, num ,arr)
%     [~,ro] = size(com);
%     
%     if num == 0
%         det = (arr);
%     else
%         mtx = com{ro-(num-1)}
%         arr = [arr,(mtx(1,1).*mtx(2,2) - mtx(1,2).*mtx(2,1))]
%         det = twod(com,num-1,arr);
%     end
% end
% 
% 
% function [ det ] = determine( co,com )
% %     [row,~] = size(mtx)
%     [ro,~] = size(com{1});
%     if ro == 2
%         com
%         arr = two(com);
%         det = sum(co.*arr);
%     else
%         [co,com] = cofactor( (com), ro, [],{});
%         det = determine(co,com);
%     end
% end
% 
% function [ co,com ] = cofactor( mtx , num, cof,com)
%     [row,~] = size(mtx{1});
%     [~,co] = size(mtx)
%     for c = 1:co
%         for r = 1:row
% %           row = row - (num-1);
%             col = mtx{c}(:,1);
% %             cell2mat(col{1})
%             col
% %             col = col(r,1)
%             number = (col(r,1)).*((-1).^(r+1));
% 
%             mask = mtx;
%             mask{c}(:,1) = [];
%             mask{c}(r,:) = [];
% 
%             cof = [cof,number];
%             com{r} = mask;
%             com{r}
% %         co = cofactor( mtx , num-1, cof,com);
%         end
%     end
%     
% %     if num == 0
%         co = cof;
%         com = com
% %     else
% %         
%         
%         
%         
% %     end
% end
% 
% % function [ det ] = next( com,num,arr,mtx )
% % %     [row,~] = size(mtx)
% %     [ro,~] = size(com{1});
% %     if ro == 2
% %         arr = two(com);
% %         det = sum(co.*arr);
% %     else
% %         [co,com] = cofactor( cell2mat(com), ro, [],{});
% %         det = determine(co,com);
% %     end
% % end
