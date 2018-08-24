function [ city, log ] = superheroCrisis( initial, second, final )
%SUPERHEROCRISIS Summary of this function goes here
%   Detailed explanation goes here

    nycVar = 25;
    asgardVar = 40;
    wakandaVar = 15;
    laVar = 35;
    washVar = 50;
    citiesVar = [nycVar,asgardVar,wakandaVar,laVar,washVar];
    nycChar = 'N';
    asgardChar = 'A';
    wakandaChar = 'W';
    laChar = 'L';
    washChar = 'D';
    cities = [nycChar,asgardChar,wakandaChar,laChar,washChar];
    
    nyc = initial(1) + second(1);
    asgard = initial(2) + second(2);
    wakanda = initial(3) + second(3);
    la = initial(4) + second(4);
    wash = initial(5) + second(5);
    firstAndSecond = [nyc,asgard,wakanda,la,wash];
    
    nyc = 25 - nyc; 
    asgard = 40 - asgard;
    wakanda = 15 - wakanda;   
    la = 35 - la;
    wash = 50 - wash;
    
    new = [nyc,asgard,wakanda,la,wash];
%     new = find(new)
    third = new(:) >= 0;
    third = find(third);
    
    fourth = firstAndSecond;
    fourth = firstAndSecond(third(1:length(third)));
    fourth = round(fourth./2);
    fourth = fourth + final;
    firstAndSecond(third(1:length(third))) = fourth;
    
%     nyc1 = fourth(1) - 25   
%     asgard1 = fourth(2) - 40 
%     wakanda1 = fourth(3) - 15
%     la1 = fourth(4) - 35
%     wash1 = fourth(5) - 50
    nyc1 = 25 - firstAndSecond(1);
    asgard1 = 40 - firstAndSecond(2);  
    wakanda1 = 15 - firstAndSecond(3); 
    la1 = 35 - firstAndSecond(4); 
    wash1 = 50 - firstAndSecond(5); 
    fifth = [nyc1,asgard1,wakanda1,la1,wash1];
    fourth = fifth(third(1:length(third)));
%     fourth = fourth + final
    

    finale = fourth(:) > 0;
    finale = find(finale);
    index = third(finale);
    
    firstAndSecond(index) = round(2*firstAndSecond(index)./3);
    
    
    
    city = cities(index);
    log = firstAndSecond(index) < (citiesVar(index)./2);
    
    
end

