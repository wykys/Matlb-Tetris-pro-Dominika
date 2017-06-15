function [ collision ] = test_collision_right( game, box, pos_x, pos_y )
%   skontorluje zda nedojde ke kolizi pri pohybu doleva

      box_x = size(box,2);
      box_y = size(box,1);
 
      X = size(game,2);
      Y = size(game,1);

    % kontrola okraje hraci plochy
    if pos_x + box_x - 1 > X
      collision = true;
      return    
    end

    % kontrola kolize s bloky
    for y=1:box_y
      % najdeme kostku z prava
      x = box_x;
      while box(y, x) < 1 && x > 1
          x = x - 1;
      end
      
      if box(y, x) % pokud bunka neni prazdna
          if (pos_y-1+y > Y) || (pos_y-1+y < 1) || (pos_x-1+x > X) || (pos_x-1+x < 1)
              collision = true;
              return;
          elseif game(pos_y-1+y, pos_x-1+x) % pokud je bunka obsazena
              collision = true;
              return;
          end
     
      end
    end

    collision = false;

end