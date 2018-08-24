clc
clear
%% Function Name: earthWindFire
%
% Test Cases:
% [out1] = earthWindFire('earth', 'wind')
% 	out1 => Player 1 wins!
% 
% [out2] = earthWindFire('fire', 'wind')
% 	out2 => Player 2 wins!
% 
% [out3] = earthWindFire('fire', 'earth')
% 	out3 => Player 1 wins!
% 
% [out4] = earthWindFire('fire', 'fire')
% 	out4 => It's a tie!
%
%--------------------------------------------------------------------------------
%% Function Name: wakeMeUp
%
% Test Cases:
% [out1] = wakeMeUp('09:00', '08:00', 'walking')
% 	out1 => You overslept and missed your first class. Better set your alarm next time!
% 
% [out2] = wakeMeUp('09:15', '09:30', 'skateboarding')
% 	out2 => You rush and make it to class just in time by skateboarding. Nice!
% 
% [out3] = wakeMeUp('07:55', '08:00', 'stinger bus')
% 	out3 => You rush to get to class by stinger bus, but sadly you are still late. Better set your alarm next time!
%
%--------------------------------------------------------------------------------
%% Function Name: highSchoolMusical
%
% Test Cases:
% [decision1] = highSchoolMusical('GT', [10,10,10], 'Photograph- Nickelback', false)
% 	decision1 => We regret to inform you that you did not make the musical.
% 
% [decision2] = highSchoolMusical('u(sic)ga', [7,7,7], 'Look What You Made Me Do', false)
% [decision4] = highSchoolMusical_soln('u(sic)ga', [7,7,7], 'Look What You Made Me Do', false)
% 	decision2 => Welcome to High School Musical!
% 
% [decision3] = highSchoolMusical('NYU', [0,0,0], 'start of something new', true)
% 	decision3 => Welcome to High School Musical!
%
%--------------------------------------------------------------------------------
%% Function Name: findMyJam
%
% Setup:
% 	load jamCases.mat
%
% Test Cases:
% [decision1] = findMyJam(options1, friends1, spotify1, stats1)
% 	decision1 => Radiohead will ignite the party!
% 
% [decision2] = findMyJam(options2, friends2, spotify2, stats2)
% 	decision2 => Kanye West will ignite the party!
% 
% [decision3] = findMyJam(options3, friends3, spotify3, stats3)
% 	decision3 => Drake will ignite the party!
% 
% [decision4] = findMyJam(options4, friends4, spotify4, stats4)
% 	decision4 => Phoenix will ignite the party!
%
%--------------------------------------------------------------------------------
%% Function Name: musicalYahtzee
%
% Test Cases:
% [out1, out2] = musicalYahtzee('eighth sixteenth quarter half thirty-second')
% 	out1 =>     40   [3 2 4 5  1]
% 	out2 => I have a Large Straight!
% 
[out1, out2] = musicalYahtzee('quarter quarter quarter quarter quarter')
% 	out1 =>     50
% 	out2 => HOORAY! MUSICAL YAHTZEE!
%  [out1, out2] = musicalYahtzee('whole half whole half whole')
% [out1, out2] = musicalYahtzee('whole half whole half whole')
% 	out1 =>     28
% 	out2 => I have a 3 of a Kind!
%
