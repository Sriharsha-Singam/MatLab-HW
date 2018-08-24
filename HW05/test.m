clc
clear

%==========================================================================
%% PART 3. Testing Your Code
%--------------------------------------------------------------------------
%
% You may use the following test cases for each problem to test your code.
% The function call with the test-inputs is shown in the first line of each
% test case, and the correct outputs are displayed in subsequent lines.
%
%% Function Name: castCharm
%
% Test Cases:
%    [ans] = isequal( castCharm([1, 3,1,0,2,1,2,1,54,12,33,24; 2, 1,12,3,2,23424,1231,3223123,1,0,1231,1212], [1, 322222,121,0,2,1,222,145,512114,12,312123,24; 2, 112,0,0,0,2424,231,3223,1,0,1231,12], 6), castCharm_soln([1, 3,1,0,2,1,2,1,54,12,33,24; 2, 1,12,3,2,23424,1231,3223123,1,0,1231,1212], [1, 322222,121,0,2,1,222,145,512114,12,312123,24; 2, 112,0,0,0,2424,231,3223,1,0,1231,12], 6))
%  [out1] = castCharm([1, 3; 2, 1], [7, 8; 2, 6], 1)
% 	out1 =>  
%     13     3
%      2    13
% 
%  [out2] = castCharm([3, 3, 5; 3, 0, 3], [0, 0, 0; 0, 0, 0], 3)
% 	out2 =>  
%      0     0     5
%      0     0     0
% 
% [out3] = castCharm([10, 11; 45, 10; 12, 0], [7, 6; 8, 10; 3, 5], 4)
% 	out3 =>  
%     10    11
%     45    10
%     12     0
%
%--------------------------------------------------------------------------------
%% Function Name: quibbler
%
% Setup:
% 	load puzzles.mat
%     load quibbler_rubrica.mat
%
% Test Cases:
%     in5 = in5
%     in6 = in6
%     [ans] = quibbler(in5,in6)
%     [ans1] = quibbler_soln(in5,in6)
%     [isit] = isequal([ans],[ans1])
%  [out1] = quibbler('owl', puzzle1)
% 	out1 =>  
% a#x
% b#y
% c#z
% 
%  [out2] = quibbler('ron', puzzle2)
% 	out2 =>  
% bnkd
% mncp
% dknc
% pzas
% 
%   [out3] = quibbler('harry', puzzle3)
% 	out3 =>  
% nmhzy
% plauq
% #####
% mntre
% gzytt
%
%--------------------------------------------------------------------------------
%% Function Name: sortingSquare
%
% Setup:
% 	load studentTest.mat
%
% Test Cases:
%  [ans] = isequal(sortingSquare(students3, 6),sortingSquare_soln(students3, 6))
%  [new1] = sortingSquare(students1, 1)
% 	new1 =>  
%      1     5     9    14
%      2     6    10    15
%      3     7    11    16
%      4     8    12    -1
% 
% [new2] = sortingSquare(students2, 3)
% 	new2 =>  
%      1     6    14    25    -1
%      2     7    15    -1    -1
%      3     8    19    -1    -1
%      4     9    20    -1    -1
%      5    10    24    -1    -1
% 
% [new3] = sortingSquare(students3, 6)
% 	new3 =>  
%     -1    -1    -1    -1    -1    -1
%     -1    -1    -1    -1    -1    -1
%     -1    -1    -1    -1    -1    -1
%     -1    -1    -1    -1    -1    -1
%     -1    -1    -1    -1    -1    -1
%     -1    -1    -1    -1    -1    -1
% 
% [new4] = sortingSquare(students4, 0)
% 	new4 =>  
%      1     8    15    22    29    36    43
%      2     9    16    23    30    37    44
%      3    10    17    24    31    38    45
%      4    11    18    25    32    39    46
%      5    12    19    26    33    40    47
%      6    13    20    27    34    41    48
%      7    14    21    28    35    42    49
%
%--------------------------------------------------------------------------------
%% Function Name: spellCheck
%
% load spellCheck_rubrica.mat

%     in = in3
%     [ans] = spellCheck(in)
%     [ans1] = spellCheck_soln(in)
%     [isit] = isequal([ans],[ans1])
% Test Cases:
% [out1] = spellCheck(['QCDN'; 'FLKI'; 'JHGM'; 'EOPB'])
% 	out1 =>    1
% 
%  [out1] = spellCheck(['RTE','AQO','MNP','DSX'])
% 	out1 =>    0
% 
% [out1] = spellCheck('A')
% 	out1 =>    1
%
%--------------------------------------------------------------------------------
%% Function Name: hippogriffCase
%
% load hippogriffCase_rubrica.mat
% 
% in = in2
% [ans] = hippogriffCase(in);
% [ans1] = hippogriffCase_soln(in)
% [isit] = isequal([ans],[ans1])
% Test Cases:
% [ans] = isequal(hippogriffCase('  Buckbeak the HIPPOGRIFF is being terribly annoying!!  '),hippogriffCase_soln('  Buckbeak the HIPPOGRIFF is being terribly annoying!!  '))
%  [ans] = isequal(hippogriffCase('I can''t believe you make me deal with this 1 hippogriff!!'),hippogriffCase_soln('I can''t believe you make me deal with this 1 hippogriff!!'))
%  [str1] = hippogriffCase('I can''t believe you make me deal with this 1 hippogriff!!')
%  [str1Soln] = hippogriffCase_soln('I can''t believe you make me deal with this 1 hippogriff!!')
% 	str1 => With This  HippogriffI Cant Believe You Make Me Deal 
% 
%  [str2] = hippogriffCase('  Buckbeak the HIPPOGRIFF is being terribly annoying!!  ')
%  [str2Soln] = hippogriffCase_soln('  Buckbeak the HIPPOGRIFF is being terribly annoying!!  ')
% 	str2 => Buckbeak The Hippogriff Is Being Terribly Annoying    
% 
%   [str3] = hippogriffCase('I study dfskvlsHippogriffswsjkdlawsjc  &  I ssd absosdclutlely LOVE evnkjsefn,aHIppogriffsascjkabsadckc!!')
%   [str4] = hippogriffCase_soln('I study dfskvlsHippogriffswsjkdlawsjc  &  I ssd absosdclutlely LOVE evnkjsefn,aHIppogriffsascjkabsadckc!!')
%  [ans] = isequal(hippogriffCase('I study dfskvlsHippogriffswsjkdlawsjc  &  I ssd absosdclutlely LOVE evnkjsefn,aHIppogriffsascjkabsadckc!!'),hippogriffCase_soln('I study dfskvlsHippogriffswsjkdlawsjc  &  I ssd absosdclutlely LOVE evnkjsefn,aHIppogriffsascjkabsadckc!!'))
% 	str3 => Absolutlely Love HippogriffsI Study Hippogriffs    I 
%
%--------------------------------------------------------------------------------
%% Function Name: puzzleBox
%
% Setup:
% 	load jumbledRowsCols.mat
%
% Test Cases:
% [out1] = puzzleBox(jumbled1, rows1, cols1)
% 	out1 => Value too large to display. Value should match that of the solution function.
% 
% [out1] = isequal(puzzleBox(jumbled2, rows2, cols2),puzzleBox_soln(jumbled2, rows2, cols2))
% 	out1 => Value too large to display. Value should match that of the solution function.
% 
% [out1] = puzzleBox(jumbled3, rows3, cols3)
% [out1] = isequal(puzzleBox(jumbled3, rows3, cols3),puzzleBox_soln(jumbled3, rows3, cols3))
% 	out1 =>  
%                         rB.                       
%                        ,@@S                       
%                        5@A@:                      
%                       :@#M@X                      
%                       h@&h5@;                     
%                      r@rSA,A@.                    
%                     ,@h i@ ;@s                    
%                     S@: 5@  9@,                   
%                    :@5  5@  :@S                   
%                    9@,  5M   S@:                  
%                   r@r   5B   ,@3                  
%                  ,@&    5A    r@r                 
%                  S@;    2A     H@.                
%                 :@5     2&     ;@s                
%                 3@,     X&      3@,               
%                r@s  .;Sh@@#3s:  ,@2               
%               .@A .i@@@3AB2h@@@; s@;              
%               i@;:@@i,  XG  .:2@3s@h              
%              :@H3@2.    XG     :@@&@r             
%              3@H@r      XG       2@H@.            
%             ;@&@r       XG        X@@i            
%            .@M@S        XG        .A@@:           
%            i@M@.        XG         ;@@X           
%           ,@A@r         XG          2@@;          
%           X@@@.         XG          :@@G          
%          ;@X@2          XG          .@#@r         
%         .@&:@r          XG           3@A@,        
%         s@:.@;          XG           29;@S        
%        ,@3 ,@;          XG           S@ i@:       
%        2@: ,@;          XG           5@ .@3       
%       ;@i  .@r          XG           h3  s@;      
%      .A@.   H2          XG          .@s  .#M.     
%      s@;    i@.         Xh          :@:   ;@s     
%     ,@3     ,@r         Xh          2@     X@,    
%     5@:      3@.        Xh         :@r     ,@S    
%    ;@i       :@i        X9         H@.      S@:   
%    A@.        r@r       39        2@:       .@h   
%   r@r          S@r      33       5@;         r@r  
%  ,@h            i@5.    33     :@@;           A@. 
%  5@:             ;@@i,  33  .:2@&,            ;@i 
% ;@S               ,S@@AXBAS3@@@r               5@,
% G@9XXXXXXXXXXX2222i5AM@@@@@@@MhiiSiiiiiiiiiiiSiX@X
% @#@@@@@@@@@@@@@@@@@@@@#M@@BM#@@@@@@@@@@@@@@@@@@@B@
%