clc
clear
%% Function Name: sellery
%
load sellery_rubrica.mat

[out] = sellery(in3)
% Test Cases:
% [out1] = sellery('Stands1.xlsx')
% isequal( sellery('Stands1.xlsx'), sellery_soln('Stands1.xlsx'))
% 	out1 => You made a profit of $6.00!
% 
% [out2] = sellery('Stands2.xlsx')
% 	out2 => You are $19.00 in debt!
% 
% [out3] = isequal(sellery('Stands3.xlsx'),sellery_soln('Stands3.xlsx'))
% 	out3 => You are $138.00 in debt!
%
%--------------------------------------------------------------------------------
% Function Name: celery
%
% Test Cases:
% [out1] = celery({'David' 'Ranch' [1 2]; 'Kantwon' 'Peanut Butter' [2 1]})
% 	out1 =>  
%     'David'      'Ranch'        
%     'Kantwon'    'Peanut Butter'
% 
% [out2] = celery({'Lobo' 'Hummus' [1 3 2] ; 'Zach' 'Ketchup' [1 2 3]; 'Tim' 'Salsa' [2 1 3]})
% 	out2 =>  
%     'Lobo'    'Hummus' 
%     'Zach'    'Hummus' 
%     'Tim'     'Ketchup'
% 
% [out3] = celery({'Tiffany' 'Baba Ghanoush' [1 2 3 4 5] ; 'Eric' 'Ranch' [5 4 3 2 1]; 'Jr' 'Mustard' [1 4 3 2 5]; 'Ivanka' 'Guac' [3 2 1 4 5]; 'Barron' 'PB' [3 4 2 1 5]})
% [out4] = celery_soln({'Tiffany' 'Baba Ghanoush' [1 2 3 4 5] ; 'Eric' 'Ranch' [5 4 3 2 1]; 'Jr' 'Mustard' [1 4 3 2 5]; 'Ivanka' 'Guac' [3 2 1 4 5]; 'Barron' 'PB' [3 4 2 1 5]})
% isequal(out3,out4)
% 	out3 =>  
%     'Tiffany'    'Baba Ghanoush'
%     'Eric'       'PB'           
%     'Jr'         'Baba Ghanoush'
%     'Ivanka'     'Mustard'      
%     'Barron'     'Guac'         
%
%--------------------------------------------------------------------------------
%% Function Name: nationalCelery
%
% Setup:
% 	load declaration.mat
%
% Test Cases:
% [out1] = nationalCelery(file1, declarationOfCelery)
% 	out1 => Nicolas Cage is the best
% 
% [out2] = nationalCelery(file2, declarationOfCelery)
% isequal(nationalCelery(file2, declarationOfCelery),nationalCelery_soln(file2, declarationOfCelery))
% 	out2 => If a man does not have the celery then he is lost. But the same man can be lost in the celery.
% 
% [out3] = nationalCelery(file3, declarationOfCelery)
% isequal(nationalCelery(file3, declarationOfCelery),nationalCelery_soln(file3, declarationOfCelery))
% 	out3 => To celery, or not to celery: that is the question. The answer is to celery, of course.
%
%--------------------------------------------------------------------------------
%% Function Name: celeryComp
%
% Setup:
% 	load celeryCompTest.mat
%
% Test Cases:
% [finalBracket1] = celeryComp(file1, test1)
% [finalBracket2] = celeryComp_soln(file1, test1)
% isequal(finalBracket1,finalBracket2)
% 	finalBracket1 =>  
%   Columns 1 through 2                   
%     'Celery Fritata'    'Celery Fritata'
%     'Celery Soup'       'Celery Bake'   
%     'Celery Bake'       'Celery Soda'   
%     'Celery Pasta'      'Celery Milk'   
%     'Celery Bread'                    []
%     'Celery Soda'                     []
%     'Celery Panini'                   []
%     'Celery Milk'                     []
%   Columns 3 through 4                   
%     'Celery Fritata'    'Celery Fritata'
%     'Celery Milk'                     []
%                   []                  []
%                   []                  []
%                   []                  []
%                   []                  []
%                   []                  []
%                   []                  []
% 
% [finalBracket2] = celeryComp(file2, test2)
% [finalBracket3] = celeryComp_soln(file2, test2)
% isequal(finalBracket2,finalBracket3)
% 	finalBracket2 => Value too large to display. Value should match that of the solution function.
% 
% [finalBracket3] = celeryComp(file3, test3)
% [finalBracket4] = celeryComp_soln(file3, test3)
% isequal(finalBracket3,finalBracket4)
% 	finalBracket3 => Value too large to display. Value should match that of the solution function.
%
%--------------------------------------------------------------------------------
%% Function Name: countCelery
%
% Test Cases:
% [cellarr1, cel1] = countCelery('twinkle.txt')
% [cellarr2, cel2] = countCelery_soln('twinkle.txt')
% isequal(cellarr1,cellarr2)
% isequal(cel1,cel2)
% 	cellarr1 =>  
%   Columns 1 through 5                            
%     'are'    'celery'    'how'    'i'    'little'
%     [  1]    [     1]    [  1]    [1]    [     1]
%   Columns 6 through 9                            
%     'twinkle'    'what'    'wonder'    'you'     
%     [      2]    [   1]    [     1]    [  1]     
% 	cel1 =>      1
% 
% [cellarr1, cel1] = countCelery('Hooked_on_a_Feeling.txt')
% [cellarr2, cel2] = countCelery_soln('Hooked_on_a_Feeling.txt')
% isequal(cellarr1,cellarr2)
% isequal(cel1,cel2)
% [cellarr2, cel2] = countCelery('Hooked_on_a_Feeling.txt')
% 	cellarr2 =>  
%   Columns 1 through 4                            
%     'a'    'alright'    'arms'    'at'           
%     [2]    [      1]    [   1]    [ 1]           
%   Columns 5 through 8                            
%     'believing'    'blue'    'by'    'cant'      
%     [        1]    [   1]    [ 1]    [   1]      
%   Columns 9 through 12                           
%     'deep'    'do'    'dont'    'everythings'    
%     [   1]    [ 1]    [   1]    [          1]    
%   Columns 13 through 16                          
%     'feeling'    'girl'    'high'    'hold'      
%     [      3]    [   1]    [   1]    [   1]      
%   Columns 17 through 21                          
%     'hooked'    'i'    'im'    'in'    'inside'  
%     [     2]    [1]    [ 2]    [ 3]    [     1]  
%   Columns 22 through 26                          
%     'just'    'know'    'let'    'love'    'me'  
%     [   1]    [   1]    [  1]    [   2]    [ 6]  
%   Columns 27 through 30                          
%     'of'    'on'    'oogachaka'    'oogaooga'    
%     [ 1]    [ 3]    [        1]    [       1]    
%   Columns 31 through 34                          
%     'realize'    'repeated'    'seude'    'so'   
%     [      1]    [       1]    [    1]    [ 1]   
%   Columns 35 through 39                          
%     'stop'    'that'    'this'    'tight'    'to'
%     [   1]    [   1]    [   1]    [    1]    [ 1]
%   Columns 40 through 44                          
%     'what'    'when'    'with'    'you'    'your'
%     [   1]    [   1]    [   2]    [  4]    [   1]
%   Column 45                                      
%     'youre'                                      
%     [    2]                                      
% 	cel2 =>      0
% 
% [cellarr1, cel1] = countCelery('The_Sorcerers_Stone.txt')
% [cellarr2, cel2] = countCelery_soln('The_Sorcerers_Stone.txt')
% isequal(cellarr1,cellarr2)
% isequal(cel1,cel2)

% [cellarr3, cel3] = countCelery('The_Sorcerers_Stone.txt')
% 	cellarr3 => Value too large to display. Value should match that of the solution function.
% 	cel3 =>      3
%
