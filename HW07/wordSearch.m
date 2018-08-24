function [ solved, inds ] = wordSearch( puzzle,words )
%WORDSEARCH Summary of this function goes here
%   Detailed explanation goes here

    origPuzzle = puzzle
    puzzle = puzzle    
    tPuzzle = puzzle'
    [rowP,colP] = size(puzzle)
    puzzle = reshape(puzzle,[1,rowP*colP])
    
    
    [rowT,colT] = size(tPuzzle)
    tPuzzle = reshape(tPuzzle,[1,rowT*colT])
    
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

    end
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
        solved = puzzle
        
%         solved1 = find(solved == '#')
        solved1 = puzzle'
        
        ind = ([indf,indfR])
         
        indT = ([indfT,indfTR])
%         indR = indR
%         indTR = indTR
%         indInd = find(indfN == ind)
%         indTind = find(indfN == indT)

        indInd = find(ismember(indfN,ind))
        indTind = find(ismember(indfN,indT))

        test = indfN(indInd)

        [indRow,indCol] = ind2sub(size(solved),indfN(n))
        [indTRow,indTCol] = ind2sub(size(solved1),indfN(t))
%         indFull = sub2ind(size(solved),indRow, indCol)
%         indFull = [indFull,sub2ind(size(solved),indTCol, indTRow) ]
    
        
        indColNew(n) = indCol
        indColNew(t)= indTRow

        indRowNew(n) = indRow
        indRowNew(t) = indTCol

%         indFull = sub2ind(size(origPuzzle),indRowNew, indColNew)
% 
%         newInds = []
%         number = 0
%         for wording = words'
%             wording = wording
%             number = number + 1
%             [row,col] = size(wording)
%             word = reshape(wording,[1,row*col])
%             first = word(1)
%             newPuzzle = origPuzzle(indFull)
%             finding = find(newPuzzle == first)
%             newInds = [newInds,indFull(finding)]
%         end
%         
%         [indRowNew,indColNew] = ind2sub(size(origPuzzle),newInds)
                    
%         indCol = ([indCol,indTRow])
%         indRow = ([indRow,indTCol])
        inds(:,1) = indRowNew
        inds(:,2) = indColNew
        
end

