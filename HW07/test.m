clc
clear
%% PART 3. Testing Your Code
%--------------------------------------------------------------------------
%
% You may use the following test cases for each problem to test your code.
% The function call with the test-inputs is shown in the first line of each
% test case, and the correct outputs are displayed in subsequent lines.
%
%% Function Name: scrabbleScore
%
% Test Cases:
% [out1] = isequal(scrabbleScore([5 20 23], [5 19 22]),scrabbleScore_soln([5 20 23], [5 19 22]))
% 	out1 => I am the Scrabble champion!
% 
% [out2] = isequal(scrabbleScore([5 5 10 20], [5 5 10 20 19]),scrabbleScore_soln([5 5 10 20], [5 5 10 20 19]))
% 	out2 => Beginner's luck...
% 
% [out3] = isequal(scrabbleScore([9 9 9 9 9 9], [54]),scrabbleScore_soln([9 9 9 9 9 9], [54]))
% 	out3 => I challenge you to a rematch!
%
%--------------------------------------------------------------------------------
%% Function Name: war
%
% Test Cases:
% [statement1] = isequal(war([11 6 13 4 2 9], [10 5 8 3 12 7]),war_soln([11 6 13 4 2 9], [10 5 8 3 12 7]))
% 	statement1 => Player 1 defeated player 2 in 22 rounds.
% 
% [statement2] = isequal(war([7 10 3 8 12 4], [13 2 6 9 5 11]),war_soln([7 10 3 8 12 4], [13 2 6 9 5 11]))
% 	statement2 => Player 2 defeated player 1 in 16 rounds.
% 
% [statement3] = isequal(war([10 3 7 13 5 6], [9 11 8 2 12 4]),war_soln([10 3 7 13 5 6], [9 11 8 2 12 4]))
% 	statement3 => Player 2 defeated player 1 in 14 rounds.
%
%--------------------------------------------------------------------------------
%% Function Name: blackJack
%
% Test Cases:
% [ans] = isequal(blackJack_soln([10,10], [75,6,7,8,74], 17),true)
% [out1] = isequal(blackJack([5,8], [10,7,11,4,2], 14),blackJack_soln([5,8], [10,7,11,4,2], 14))
% 	out1 =>    0
% 
% [out2] = isequal(blackJack([10,10], [75,6,7,8,74], 17),blackJack_soln([10,10], [75,6,7,8,74], 17))
% 	out2 =>    1
% 
% [out3] = isequal(blackJack([10,4], [2,4,8,10,11], 20),blackJack_soln([10,4], [2,4,8,10,11], 20))
% 	out3 =>    1
%
%--------------------------------------------------------------------------------
%% Function Name: goFish
%
% load goFish_rubrica.mat
% [win2, scorevec2] = goFish(in4, in5, in6)
% [win3, scorevec3] = goFish_soln(in4, in5, in6)
% Test Cases:
% [win1, scorevec1] = goFish([1 2 2 3], [1 4 3 5], [4 5 6 6])
% 	win1 => Player 1 won!
% 	scorevec1 =>      3     1
% 
% [win2, scorevec2] = isequal(goFish([4 5 1 6], [7 2 2 5], [3 7 7 3 6 1 7 4 2 3 6 5 5 1 1 2 4 3 4 5]),goFish([4 5 1 6], [7 2 2 5], [3 7 7 3 6 1 7 4 2 3 6 5 5 1 1 2 4 3 4 5]))
% 	win2 => Player 2 won!
% 	scorevec2 =>      1     2
% 
% [win3, scorevec3] = goFish([11 10 13 13 1 12 3], [9 5 6 10 4 7 2], [9 5 3 8 13 8 5 12 4 1 8 12 12 3 9 2 4 11 6 11 10 9 7 6 7 8 6 1 13 2 5 1 3 10 4 7 11 2])
% 	win3 => Player 2 won!
% 	scorevec3 =>     12    13
%
%--------------------------------------------------------------------------------
%% Function Name: wordSearch
%
% Setup:
% 	load wordSearch_rubrica.mat
%
% Test Cases:
% [solved1, inds1] = wordSearch(in3, in4)
% [solved2,inds2] = wordSearch_soln(in3, in4)
% 	solved1 =>  
% #bc#ef
% #hi###
% #no#qr
% ####wx
% 	inds1 =>  
%      4     4
%      1     4
%      2     4
%      1     1
% % % 
% [solved2, inds2] = wordSearch(puzzle2, words2)
% [solved, inds] = wordSearch_soln(puzzle2, words2)
% [ans] = isequal(inds2,inds)
% [ans1] = isequal(solved2,solved)
% 	solved2 =>  
% buqmxc#pyjygted
% oarqlw#gnprfnur
% mosdmu#ylupjhgd
% owchko#emswaekv
% dordfh#phynahwi
% derbku#k######a
% bnse######oicfo
% nefzhcxsz#tfhao
% mapqqhopt#jgyqd
% bkui#zsud#qfjmv
% gnlv#qzrb#kdzzk
% hmvy#dikokqkxsb
% opgm#iangq#rfyz
% s#######td#ynoe
% jkoooioifp#ujwl
% 	inds2 =>  
%     11    10
%      6    14
%      7     5
%     14     8
%     15    11
%     14     5
%      1     7
% 
% [solved3, inds3] = wordSearch(puzzle3, words3)
% [solved4, inds4] = wordSearch_soln(puzzle3, words3)
% 
% [ans] = isequal(inds3,inds4)
% [ans1] = isequal(solved3,solved4)
% 	solved3 =>  
% j#zp#vqqkd
% p#f#######
% g#xh#bgtnr
% ##cf#pmovc
% ##ac#mwcoo
% ##el######
% #nlq#mimwq
% #ioa#ngkzx
% #lkag#####
% #isqpxzhla
% 	inds3 =>  
%     10     6
%      5     8
%      4     2
%      1    10
%      2     1
%     10     9
%
%--------------------------------------------------------------------------------
%% Function Name: wordSearchHard
%
% Setup:
	load wordSearchHard_rubrica.mat
%
% Test Cases:
[solved1] = wordSearchHard(in1, in2)
% 	solved1 =>  
% ###
% ###
% ###
% 
% [solved2] = wordSearchHard(arr2, list2)
% 	solved2 =>  
% @@@@@@@@
% @######@
% @ih##sL@
% @NO##sh@
% @@@@@@@@
% 
% [solved3] = wordSearchHard(arr3, list3)
% 	solved3 =>  
% @@@@@@@@@@@@@@@@@@@@@
% @@@@@@@@@@@@@@@@@@@@@
% @@@@@@@@@@@@@@@@@@@@@
% @@@#isNe#B2dbWEod#@@@
% @@@####h#i####ueo#@@@
% @@@#Jsiw#fBDBWeod#@@@
% @@@#hjsjrqssjsjod#@@@
% @@@####sDWBdjqosi#@@@
% @@@######ndjCBdue#@@@
% @@@@@@@@@@@@@@@@@@@@@
% @@@@@@@@@@@@@@@@@@@@@
% @@@@@@@@@@@@@@@@@@@@@
%
%--------------------------------------------------------------------------------
%% Function Name: blackJackHard
%
% Setup:
%	load blackJackHard_testcases.mat
%
% Test Cases:
% [out1, out2] = blackJackHard(risk1, deck1, played1)
% 	out1 =>     19    17    22    13    24
% 	out2 =>      1     2     4
% 
% [out1, out2] = blackJackHard(risk2, deck2, played2)
% 	out1 =>     20    21    21    20    17
% 	out2 =>      1     2     3     4
% 
% [out1, out2] = blackJackHard(risk3, deck3, played3)
% 	out1 =>     19    18    17    20    17
% 	out2 =>      1     2     4
%
