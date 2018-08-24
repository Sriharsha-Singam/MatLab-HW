function [ out ] = goLong( vector )

    out = sqrt((vector(:,1)-vector(:,3)).^2+(vector(:,2)-vector(:,4)).^2);
    out = sprintf("(%.2f, %.2f) is %.2f units from (%.2f, %.2f)",[vector(:,1),vector(:,2)],out,[vector(:,3),vector(:,4)]);
    out = char(out);
%     out = out.*100;
%     out = round(out);
%     out = out./100;
    
end

