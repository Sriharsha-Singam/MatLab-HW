clc
clear
%% Function Name: cartoonize
%
% Test Cases:
% cartoonize('friends.png', 50)
% checkImage('cartoon_friends.png','cartoon_friends_soln.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% cartoonize('newGirl.png', 75)
% checkImage('cartoon_newGirl.png','cartoon_newGirl_soln.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% cartoonize('iLoveLucy.png', 100)
% checkImage('cartoon_iLoveLucy.png','cartoon_iLoveLucy_soln.png')
% 		Output image(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: popArt
%
% Test Cases:
% popArt('buzz.png')
% checkImage('buzz_pop.png','buzz_pop_soln.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% popArt_soln('petersons.png')
% checkImage('petersons_pop.png','petersons_pop_soln.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% popArt_soln('yoda.png')
% checkImage('yoda_pop.png','yoda_pop_soln.png')
% 		Output image(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: narutoRun
%
% Test Cases:
% narutoRun_soln('run1.png', 'BinaryBridge.png')
% checkImage('RunAcrossBinaryBridgeNarutoStyle.png','RunAcrossBinaryBridgeNarutoStyle_soln.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% narutoRun_soln('run2.png', 'Klaus.png')
% checkImage('RunAcrossKlausNarutoStyle.png','RunAcrossKlausNarutoStyle_soln.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% narutoRun_soln('run3.png', 'TechGreen.png')
% checkImage('RunAcrossTechGreenNarutoStyle.png','RunAcrossTechGreenNarutoStyle_soln.png')
% 		Output image(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: looneyTunes
%
% Test Cases:
% looneyTunes_soln('symphonyNo5', 1, 11)
% checkImage('symphonyNo5_part9.png','symphonyNo5_part9_soln.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% looneyTunes('LooneyTunes', 3, 7)
% checkImage('LooneyTunes_part4.png','LooneyTunes_part4_soln.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% looneyTunes('PeerGyntSuite1', 6, 4)
% checkImage('PeerGyntSuite1_part1.png','PeerGyntSuite1_part1_soln.png')
% 		Output image(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: pokemonSNAP
%
% Setup:
% 	load nationalPokedex.mat
%
% Test Cases:
% pokemonSNAP('timessquare_pokemon.png', 'timessquare.png', nationalPokedex)
% checkImage('timessquare_captured.png','timessquare_captured_soln.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% pokemonSNAP_soln('GTCampanile_pokemon.png', 'GTCampanile.png', nationalPokedex)
% checkImage('GTCampanile_captured.png','GTCampanile_captured_soln.png')
% 		Output image(s) should be identical to that produced by solution file
% 
% pokemonSNAP('ceruleanCave_pokemon.png', 'ceruleanCave.png', nationalPokedex)
% checkImage('ceruleanCave_captured.png','ceruleanCave_captured_soln.png')
% 		Output image(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: shatteredScreen
%
% Setup:
% 	load screenPieces.mat
%
% Test Cases:
% shatteredScreen_soln(test1, name1)
% 		Output image(s) should be identical to that produced by solution file
% 
% shatteredScreen_soln(test2, name2)
% 		Output image(s) should be identical to that produced by solution file
% 
% shatteredScreen_soln(test3, name3)
% 		Output image(s) should be identical to that produced by solution file
%
