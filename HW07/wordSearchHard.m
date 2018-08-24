function [ solved ] = wordSearchHard( puzzle, words )
%WORDSEARCHHARD Summary of this function goes here
%   Detailed explanation goes here
    
    
    

    upper = isstrprop(puzzle,'upper');
    upper = find(upper(:) > 0);
    puzzle(upper) = lower(puzzle(upper)) 
    
    
    
    origPuzzle = puzzle
    puzzle = puzzle    
    tPuzzle = puzzle'
    [rowP,colP] = size(puzzle)
    puzzle = reshape(puzzle,[1,rowP*colP])
    
    
    [rowT,colT] = size(tPuzzle)
    tPuzzle = reshape(tPuzzle,[1,rowT*colT])
    newWord = []
    commas = find(words == ',')
    newWord = zeros(length(commas))
    setting = words
    num = 0
    l = length(words)
%     wordings = ''
    while length(setting) > 0
        num = num + 1
        [word,setting] = strtok(setting,',')
        newing = l - length(word)+1
        word(length(word)+1:newing) = ' '
        newWord = [newWord;word]
    end
    newWord = char(newWord)
    words = newWord
    wordComma = find(words == ',')
    words(wordComma) = ' '
    words = lower(words)
    rWords = fliplr(words)
    
    word = []
         ind = []
        indT = []
        indR = []
        indTR = []
        
        indf = []
        indfT = []
        indfR = []
        indfTR = []

        indfN = []
    var = 0;
    t = []
    n = []
    notThere = 0
    for wording = words'
        wording = wording
        var = var + 1;
        [row,col] = size(wording)
        word = reshape(wording,[1,row*col])
        space = isspace(word)
        word(space) = []
        rWord = fliplr(word)

        ind = [ind,(strfind(puzzle, word):strfind(puzzle, word)+length(word)-1)]
        indT = [indT,(strfind(tPuzzle,word):strfind(tPuzzle,word)+length(word)-1)]
        indR = [indR,(strfind(puzzle,rWord):strfind(puzzle,rWord)+length(rWord)-1)]
        indTR = [indTR,(strfind(tPuzzle,rWord):strfind(tPuzzle,rWord)+length(rWord)-1)]
        
        
        indf = [indf,strfind(puzzle, word)]
        indfT = [indfT,strfind(tPuzzle,word)]
        indfR = [indfR,strfind(puzzle,rWord)+length(rWord)-1]
        indfTR = [indfTR,strfind(tPuzzle,rWord)+length(rWord)-1]
        if length(strfind(tPuzzle,word)) > 0 | length(strfind(tPuzzle,rWord)+length(rWord)-1) > 0
            t = [t, var]
        else
            n = [n,var]
        end
        indfN = [indfN,strfind(puzzle, word),strfind(tPuzzle,word), strfind(puzzle,rWord)+length(rWord)-1, strfind(tPuzzle,rWord)+length(rWord)-1 ]
        
        if length(indf) == 0 & length(indfT) == 0 & length(indfR) == 0 & length(indfTR) == 0
           
            notThere = notThere +1
        end
    end
%     for wording = words'
%         for rows = rowP
%             arr = [puzzle(rows,:),puzzle(rows,:)]
%         end
%         for cols = colP
%             arr = [puzzle(:,cols),puzzle(:,cols)]
%         end
%     end
         ind = ind
        indT = indT
        indR = indR
        indTR = indTR
        
        tPuzzle(indT) = '#'
        tPuzzle(indTR) = '#'
        
        tPuzzle = reshape(tPuzzle,[rowT,colT])
        puzzle = tPuzzle'
        puzzle = reshape(puzzle,[1,rowP*colP])
        puzzle(ind) = '#'
        puzzle(indR) = '#'
        puzzle = reshape(puzzle,[rowP,colP])
        puzzle(1:rowP,1:colP) = puzzle(1+notThere:rowP+notThere,1+notThere:colP+notThere)
        puzzle(1:notThere,1:notThere) = '@'
        
        solved = puzzle
end

