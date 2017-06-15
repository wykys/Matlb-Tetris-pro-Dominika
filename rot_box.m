function [ box_out ] = rot_box( box_in )
%   otoci box
%   prohodi osy x a y
%   a osu x otoci o pi

    box_in_x = size(box_in,2);
    box_in_y = size(box_in,1);
    
    box_out = box_in';

    for x=1:box_in_x
        for y=1:box_in_y
            box_out(box_in_x-x+1, y) = box_in(y,x); % v matlabu je prohozene x,y
        end
    end
end

