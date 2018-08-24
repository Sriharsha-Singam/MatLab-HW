function [ result ] = highSchoolMusical( university, scores, song, selfie )
%HIGHSCHOOLMUSICAL Summary of this function goes here
%   Detailed explanation goes here
    song = lower(song);
    weighted = sum([scores(1)*1.5 scores(2)*1.25 scores(3)])
%     nickelBack = strfind(song,'Nickelback')

    if weighted < 26
        result = 'We regret to inform you that you did not make the musical.'
    else
        result = 'Welcome to High School Musical!'
    end
    if selfie
        result = 'We regret to inform you that you did not make the musical.'
    end
    if strcmp(university,'Georgia Tech') | strcmp(university,'GT') | strcmp(university,'Georgia Institute of Technology')
         result = 'Welcome to High School Musical!'
    end      
    if contains(song,'nickelback')
        result = 'We regret to inform you that you did not make the musical.'
    end
    if contains(song,'start of something new')
        result = 'Welcome to High School Musical!'
    end
    if strcmp(university,'u(sic)ga')
        result = 'We regret to inform you that you did not make the musical.'
    end
end

