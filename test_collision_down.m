function [ collision ] = test_collision_down( game, box, pos_x, pos_y )
%   skontorluje zda nedojde ke kolizi pri pohybu dolu

      box_x = size(box,2);
      box_y = size(box,1);
 
      X = size(game,2);
      Y = size(game,1);

    % kontrola okraje hraci plochy
    if pos_y + box_y - 1 > Y
      collision = true;
      return    
    end

    % kontrola kolize s bloky
    for x=1:box_x
      % najdeme kostku od spodu
      y = box_y;
      while box(y, x) < 1 && y > 1
          y = y - 1;
      end
      
      if box(y, x) % pokud bunka neni prazdna
          if game(pos_y+y-1, pos_x-1+x) % pokud je bunka obsazena
              collision = true;
              return;
          end
     
      end
    end

    collision = false;

end
