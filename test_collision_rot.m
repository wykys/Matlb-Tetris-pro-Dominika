function [ collision ] = test_collision_rot( game, box, pos_x, pos_y )
%   skontorluje zda nedojde ke kolizi pri rotaci

      box_x = size(box,2);
      box_y = size(box,1);
 
      X = size(game,2);
      Y = size(game,1);

    % kontrola okraje hraci plochy
    if pos_y < 1 % top
      collision = true;
      return
    elseif pos_y + box_y - 1 > Y % down
      collision = true;
      return
    elseif pos_x < 1 % left
      collision = true;
      return
    elseif pos_x + box_x - 1 > X % right
      collision = true;
      return
    end
    
    if test_collision_down(game, box, pos_x, pos_y)
        collision = true;        
    elseif test_collision_left(game, box, pos_x, pos_y)
        collision = true;        
    elseif test_collision_right(game, box, pos_x, pos_y)
        collision = true;        
    else
        collision = false;
    end

end