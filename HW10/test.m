clc
clear
%% Function Name: animalHotel
%
% Test Cases:
% [out1] = animalHotel({'Name','Species','Origin','Food';'Jerry','Elephant','Africa','Plants';'Stanley','Snake','South America','Rodents';'Christopher','Polar Bear','Antarctica','Fish'})
% [out2] = animalHotel_soln({'Name','Species','Origin','Food';'Jerry','Elephant','Africa','Plants';'Stanley','Snake','South America','Rodents';'Christopher','Polar Bear','Antarctica','Fish'})
% isequal(out1,out2)
% 	out1 => Structure array should be identical to that produced by solution file
% 
% [out1] = animalHotel({'Species','Name','Room';'Dog','Max',101;'Cat','Suzie',138;'Rat','Charlie',140})
% [out2] = animalHotel_soln({'Species','Name','Room';'Dog','Max',101;'Cat','Suzie',138;'Rat','Charlie',140})
% isequal(out1,out2)
% 	out1 => Structure array should be identical to that produced by solution file
% 
% [out1] = animalHotel({'Name','Species','Dream';'Marty','Zebra','Freedom';'Alex','Lion','Steak';'Gloria','Hippo','Melman';'Melman','Giraffe','Doctor'})
% [out2] = animalHotel_soln({'Name','Species','Dream';'Marty','Zebra','Freedom';'Alex','Lion','Steak';'Gloria','Hippo','Melman';'Melman','Giraffe','Doctor'})
% isequal(out1,out2)
% 	out1 => Structure array should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: remodelZoo
%
% Setup:
% 	load studentZoos.mat
%
% Test Cases:
% zoo = zoo3
% [newZoo1] = remodelZoo(zoo);
% [newZoo2] = remodelZoo_soln(zoo)
% isequal(newZoo1,newZoo2)
% 	newZoo1 => Structure array should be identical to that produced by solution file
% 
% [newZoo2] = remodelZoo(zoo2)
% 	newZoo2 => Structure array should be identical to that produced by solution file
% 
% [newZoo3] = remodelZoo(zoo3)
% 	newZoo3 => Structure array should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: zooBreak
%
% Setup:
%     	load cityMaps.mat
%
% Test Cases:
% [newMap1, dist1] = zooBreak(map1, 'lion')
% 	newMap1 => Structure array should be identical to that produced by solution file
% 	dist1 =>            1.4142135623731
% 
% [newMap2, dist2] = zooBreak(map2, 'giraffe')
% 	newMap2 => Structure array should be identical to that produced by solution file
% 	dist2 =>      1
% 
% [newMap3, dist3] = zooBreak(map3, 'lemur')
% 	newMap3 => Structure array should be identical to that produced by solution file
% 	dist3 =>           3.16227766016838
%
%--------------------------------------------------------------------------------
% %% Function Name: saveTheWhales
%
% Setup:
	load saveTheWhales_rubrica.mat
%
% % Test Cases:
% ST = ST2
% [newStruct1] = saveTheWhales(ST)
% [newStruct2] = saveTheWhales_soln(ST)
% isequal(newStruct1,newStruct2)
% 	newStruct1 =>  
%     A: 1
%     B: 2
%     D: 4
%     E: 5
%     H: 8
%     I: 9
%     C: 3
%     F: 6
%     G: 7
% 
% [newStruct2] = saveTheWhales(ST2)
% 	newStruct2 =>  
%     D: 4    
%     E: 5    
%     H: 8    
%     I: 9    
%     K: 13   
%     O: 20   
%     F: 6    
%     G: 7    
%     J: 11   
%     L: 14.75
%     M: 16.5 
%     N: 18.25
% 
[newStruct3] = saveTheWhales(in3)
[newStruct2] = saveTheWhales_soln(in3)
isequal(newStruct3,newStruct2)
% 	newStruct3 =>  
%     C: 4
%     G: 0
%     K: 4
%     N: 7
%     D: 3
%     E: 2
%     F: 1
%     H: 1
%     I: 2
%     J: 3
%     L: 5
%     M: 6
%
%--------------------------------------------------------------------------------
%% Function Name: predator
%
% Setup:
% 	load predatorStudentCases.mat
%
% Test Cases:
% an = animals3
% ev = events3
% [res1] = predator(an, ev)
% [res2] = predator_soln(an, ev)
% isequal(res1,res2)
% 	res1 => 3 animals survived 3 grueling months.
% 
% [res2] = predator(animals2, events2)
% 	res2 => 5 months were too much for the animals, and none of them survived.
% 
% [res3] = predator(animals3, events3)
% 	res3 => After 7 months of observation, only Harry, a Western Lowland Gorilla, survived.
%
