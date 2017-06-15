function [ game_out ] = shift_down( game_in)
%   pokud je plna horizontalni rada tak ji smaz a kostky posun dolu
    
    X = size(game_in,2);
    Y = size(game_in,1);
    
    game_out = game_in;
    
    for y = 1:Y
        line = true;
        for x = 1:X
            if game_in(y,x) < 1
                line = false;
                break;
            end
        end
        
        if line % pokud jsme nasli prazdny radek
            game_out = zeros(Y,X);
            game_out(2:y, :) = game_in(1:y-1, :);
            game_out(y+1:end, :) = game_in(y+1:end, :);
            game_out = shift_down(game_out);
        end
    end
    


end

