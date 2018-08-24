function [ out ] = predator( in1,in2 )
%PREDATOR Summary of this function goes here
%   Detailed explanation goes here

    numMonths = length(in2);
    
    
    n = 0;
    while n< numMonths & ~isempty(in1)
        n = n+1
        dis = in2{n,:}

        int = cell2mat([{in1.Intimidation}])
        cute = cell2mat([{in1.Cuteness}])
        wis = cell2mat([{in1.Wisdom}])
        surv = cell2mat([{in1.SurvivalSkill}])
        swim = cell2mat([{in1.SwimmingAbility}])
        suming = int + cute + wis + surv + swim;
        switch dis
            case {'Meteor Strike'}
                intmcute = int - cute

                m = find((intmcute) == min((intmcute)))
                if length(m) > 1
                    m = find((suming) == min((suming)))
                    in1(m) = []
                elseif length(m) == 1
                    m = find((intmcute) == min((intmcute)))
                    in1(m) = []
                end
            case {'Flood'}  
                intmcute = int - cute

                m = ((surv) == min((surv)))
                m1 = ((swim) == min((swim)))
                m = find(or(m,m1) == 1)
                if length(m) == 1
                    in1(m) = []
                elseif length(m) > 1
                    m = find((suming) == min((suming)))
                    in1(m) = []
                end
            case {'Famine'}
                  d = false(1,length(in1))
                  for first = 1:length(in1)
                      pred = in1(first).Predator
                      alive = false;
                      for second = 1:length(in1)
                          if strcmp(pred, in1(second).Species)
                              alive = true
                          end
                      end
                      d(first) = alive
                  end
                  in1(d) = []
                  
            case {'Volcanic Eruption'}
                less = (surv<mean(surv))
                in1(less) = []
        end
        
    end
    in1.Name
    if isempty(in1)
        out = sprintf('%d months were too much for the animals, and none of them survived.',n);
    elseif length(in1) == 1
        out = sprintf('After %d months of observation, only %s, a %s, survived.',n,in1(1).Name,in1(1).Species)
    else
        out = sprintf('%d animals survived %d grueling months.',length(in1),n)
    end

end

