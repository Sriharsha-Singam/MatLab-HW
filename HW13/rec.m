% function [ output_args ] = digits( input_args )
% %REC Summary of this function goes here
% %   Detailed explanation goes here
%     if length(input_args) <=1
%         out= double(input_args>'5');
%     else
%         out = digits(input_args(1)) + digits(input_args(2:end));
%     end
% 
% end
%    function newArr = rec(arr)
%      [rows cols] = size(arr);
% 	 newArr = arr(1:ceil(rows./2), floor(cols./2):end);
% 	 minimum = min(newArr);
% 	 maximum = max(minimum);
% 	 newArr = helper(maximum, newArr);
% 	 mask = mod(newArr, 2)==1;
% 	 newArr(mask) = NaN;
%    end
% 
%   function output = helper(value, arr)
% 	 arr = arr(:);
%     newArr = arr(arr >= value);
% 	 newArr = [newArr newArr];
% 	 output = newArr %+ mod(maximum,3);
%   end

% function out = rec(in)
% 
% % if length(in) == 1
% % 	out = in
% % elseif in(1) == in(2)
% % 	out = rec(in(2:end))
% % else
% % 	out = [in(1), rec(in(2:end))]
% % end
% % end
% pokeDex = struct('Name', {'Charizard', 'Lapras', 'Gengar', 'Dragonite'},... 
% 	    'Type', {'Fire', 'Water', 'Ghost', 'Dragon'},...
% 		    'Level', 100, ...
% 		    'Owner', {'Sree', 'Trip', 'uram', 'allu'})
%     weakness = struct('Type', {'Dragon', 'Fire', 'Grass', 'Fighting'}, ...
% 		     'Weak', {'ICE', 'Water', 'Fire', 'Psychic'});
% 
%   for i = 1:length(pokeDex)
%    for j = 1:length(weakness)
%        if strcmpi(pokeDex(i).Type, weakness(j).Type)
%             pokeDex(i).Weakness = weakness(j).Weak;
%         end
%    end
%  end
%  out = fieldnames(pokeDex); 
% pokeDex = setfield(pokeDex,{randi([250 350],1,4)})
% end
   function rec(x,y,order)
   
   z = 1
   n = 1
   while z < order.*2
     coeff = polyfit(x,y,n)
     coeff(end) = []
     coeff = coeff .* length(coeff):-1:1
     y1 = polyval(coeff,x)
    subplot(order,2,z)
    plot(x,y1)
    y = diff(y)./diff(x)
%     x = x(1:end-1)
    subplot(order,2,z+1)
    plot (x,y)
    z = z+2
    n = n+1
  end

  end
