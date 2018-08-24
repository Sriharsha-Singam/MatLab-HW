clc
% clear
%% PART 3. Testing Your Code
%--------------------------------------------------------------------------
%
% You may use the following test cases for each problem to test your code.
% The function call with the test-inputs is shown in the first line of each
% test case, and the correct outputs are displayed in subsequent lines.
%
%% Function Name: drSeuss
%
% Test Cases:
% [out1] = isequal(drSeuss('greenEggs&Ham.txt'),drSeuss_soln('greenEggs&Ham.txt'))
% 	out1 => Wow! Line one and two rhyme, reading this will be a great time.
% 
% [out1] = isequal(drSeuss('theLorax.txt'),drSeuss_soln('theLorax.txt'))
% 	out1 => Wow! Line one and two rhyme, reading this will be a great time.
% 
% [out1] = isequal(drSeuss('theCatInTheHat.txt'),drSeuss_soln('theCatInTheHat.txt'))
% 	out1 => In line one, two, or three, rhymes were not meant to be.
%
%--------------------------------------------------------------------------------
%% Function Name: library
%
% Test Cases:
% library(in7,in8,in9)
% library('Goodnight Moon', 3, 2)
% 		Output text file(s) should be identical to that produced by the solution file
% 
% library_soln('Chronicles of Narnia', 4, 1)
% 		Output text file(s) should be identical to that produced by the solution file
% 
% library_soln('Peter Pan', 5, 3)
% 		Output text file(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: magicTreehouse
%
% Test Cases:
% [count1] = magicTreehouse('shortTest.txt', 'this', 'is')
% 	count1 =>      2     2
% 
% [count2] = magicTreehouse('mediumTest.txt', 'Fox', 'ugly')
% 	count2 =>      3     2
% 
% [count3] = magicTreehouse('longTest.txt', 'Magic', 'and')
% 	count3 =>      2    12
%
%--------------------------------------------------------------------------------
%% Function Name: bookmateMatch
%
% bookmateMatch(in3,in4)
% bookmateMatch_soln(in3,in4)
% a = isequal(bookmateMatch(in1,in2),bookmateMatch_soln(in1,in2))
% Test Cases:
% [out1] = bookmateMatch('BH.txt', 'CS.txt')
% 	out1 => Bob Henderson and Cindy Silverman have a 32% bookmate compatibility score.
% 
% [out1] = bookmateMatch('BH.txt', 'JB.txt')
% 	out1 => Bob Henderson and Jeremy Bones have a 70% bookmate compatibility score.
% 
% [out1] = bookmateMatch('CS.txt', 'JB.txt')
% 	out1 => Cindy Silverman and Jeremy Bones have a 32% bookmate compatibility score.
%
%--------------------------------------------------------------------------------
%% Function Name: hungerGames
%
% Test Cases:
% in = in3
% hungerGames(in)
% hungerGames_soln(in)
% isequal(hungerGames(in),hungerGames_soln(in))
% [out1] = hungerGames('tributes1.txt')
% [ans] = hungerGames_soln('tributes1.txt')
% 	out1 => Peter is most favored to win with a score of 7!
% 
% [out2] = hungerGames('tributes2.txt')
% 	out2 => Katniss Everdeen is most favored to win with a never before seen score of 11!
% 
% [out3] = hungerGames('tributes3.txt')
% 	out3 => Katniss Everdeen is most favored to win with a never before seen score of 11!
% 
%--------------------------------------------------------------------------------
%% Function Name: greatGatsby
%
% in1 = in7
% in2 = in8
% in3 = in9
% greatGatsby(in1,in2,in3)
% greatGatsby_soln(in1,in2,in3)
% visdiff('Presidential_attended.txt','Presidential_attended_soln.txt')
% Test Cases:
% greatGatsby('Roarin20s_guests.txt', 'Roarin20s_arrived.txt', 10)
% 		Output text file(s) should be identical to that produced by the solution file
% 
% greatGatsby_soln('soundtrack_guests.txt', 'soundtrack_arrived.txt', 11)
% 		Output text file(s) should be identical to that produced by the solution file
% 
% greatGatsby('underTheSea_guests.txt', 'underTheSea_arrived.txt', 10)
% 		Output text file(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: shakespeare
%
% [rhyme1] = shakespeare('roses.txt')
% Test Cases:
% [rhyme1] = shakespeare('roses.txt')
% 	rhyme1 => ABAC
% 
% [rhyme2] = shakespeare('limerick.txt')
% 	rhyme2 => AABBA
% 
% [rhyme3] = shakespeare('sonnet.txt')
% 	rhyme3 => ABABCDCDEFEFGG
%
%--------------------------------------------------------------------------------
%% Function Name: theBoyWhoLovedArrays
%
% in1 = in5
% in2 = in6
% theBoyWhoLovedArrays(in1, in2)
% theBoyWhoLovedArrays_soln(in1, in2)
% visdiff('test3.txt','test3_soln.txt')
% isequal(theBoyWhoLovedArrays(in1, in2),theBoyWhoLovedArrays_soln(in1, in2))
% Test Cases:
% theBoyWhoLovedArrays([4, 2, 8; 5, 2, 1], 'test1.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% theBoyWhoLovedArrays_soln(7, 'test2.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% theBoyWhoLovedArrays_soln(magic(100), 'test3.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% theBoyWhoLovedArrays([923451, 567, 18934; 4, 2, 8; 347899, 23, 1324789234], 'test4.txt')
% 		Output text file(s) should be identical to that produced by the solution file
%