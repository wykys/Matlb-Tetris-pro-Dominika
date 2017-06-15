clc
close all
clear all

X = 13; % sirka hry
Y = 33; % vyska hry

game = zeros(Y,X); % plocha hry
game_move = game;

box = put_box();

pos_x = int16(X/2);
pos_y = 1;

drop_box = false;

while 1

    box_x = size(box,2);
    box_y = size(box,1);
    
    switch get_key()
        case 'a'
            if test_collision_left(game, box, pos_x-1, pos_y+1) == false
                pos_x = pos_x - 1;
            end
        case 'd'
            if test_collision_right(game, box, pos_x+1, pos_y+1) == false
                pos_x = pos_x + 1;
            end
        case 'w'
            if test_collision_rot(game, rot_box(box), pos_x, pos_y+1) == false
                box = rot_box(box);
                box_x = size(box,2);
                box_y = size(box,1);
            end
        case 's'
            drop_box = true;
    end
    
    % kontrola pousnu dolu
    if test_collision_down(game, box, pos_x, pos_y+1)
        game = game_move;
        pos_x = int16(X/2);
        pos_y = 1;
        box = put_box();
        drop_box = false;
        if test_collision_down(game, box, pos_x, pos_y+1) % konec hry
            disp('Game Over!')
            break;
        end
    else
        pos_y = pos_y+1;
        game_move = game;
        game_move(pos_y : pos_y+box_y-1, pos_x : pos_x+box_x-1) = game_move(pos_y : pos_y+box_y-1, pos_x : pos_x+box_x-1) + box;
    end
    
    game_move = shift_down(game_move);
    show(game_move);

    if drop_box == false
        pause(0.2);
    end

end
