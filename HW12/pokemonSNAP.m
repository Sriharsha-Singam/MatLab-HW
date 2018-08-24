function pokemonSNAP( poke, nopoke, info )
%POKEMONSNAP Summary of this function goes here
%   Detailed explanation goes here

    name = nopoke;

    poke = imread(poke);
    nopoke = imread(nopoke);
    pokemon = pokedex(poke,info);
    
    comma = find(pokemon == ',');
    pokemon(comma:end) = [];
    rare = '';
    
    val = 0;
    for s = 1:length(info)
        if isequal(info(s).pokemon,pokemon)
            rare = info(s).rarity;
            val = s;
        end
    end
    
    if isequal(rare,'common')
        rare = 'pokeball.png';
    elseif isequal(rare,'uncommon')
        rare = 'greatball.png';
    elseif isequal(rare,'rare')
        rare = 'ultraball.png';
    elseif isequal(rare,'legendary')
        rare = 'masterball.png';
    end
    rare = imread(rare);

    r = rare(1,1,1);
    g = rare(1,1,2);
    b = rare(1,1,3);
    
    dim = size(nopoke);

    pokeball = imresize(rare,[dim(1) dim(2)],'nearest');
    
    isGreen = pokeball(:,:,1) == r & pokeball(:,:,2) == g & pokeball(:,:,3) == b;
    
    R = nopoke(:,:,1);
    G = nopoke(:,:,2);
    B = nopoke(:,:,3);
    
    R1 = pokeball(:,:,1);
    G1 = pokeball(:,:,2);
    B1 = pokeball(:,:,3);
    
    R1(isGreen) = R(isGreen);
    G1(isGreen) = G(isGreen);
    B1(isGreen) = B(isGreen);
    
    run1 = cat(3,R1,G1,B1);
    s = find(name == '.');
    name(s:end) = [];
    imgName = sprintf('%s_captured.png',name);
    imwrite(run1,imgName);
    
end