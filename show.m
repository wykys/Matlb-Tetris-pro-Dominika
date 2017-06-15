function [ ] = show( data )
%   vykresli hraci plochu
    img_X = size(data,2);
    img_Y = size(data,1);
    img = cat(3, data,data,data);

    for x=1:img_X
        for y=1:img_Y
            switch img(y,x,1)
                case 0
                    img(y,x,1) = 0;
                    img(y,x,2) = 0;
                    img(y,x,3) = 0;
                case 1
                    img(y,x,1) = 255;
                    img(y,x,2) = 0;
                    img(y,x,3) = 0;
                case 2
                    img(y,x,1) = 0;
                    img(y,x,2) = 255;
                    img(y,x,3) = 0;
                case 3
                    img(y,x,1) = 0;
                    img(y,x,2) = 0;
                    img(y,x,3) = 255;
                case 4
                    img(y,x,1) = 255;
                    img(y,x,2) = 255;
                    img(y,x,3) = 0;
                case 5
                    img(y,x,1) = 255;
                    img(y,x,2) = 0;
                    img(y,x,3) = 255;
                case 6
                    img(y,x,1) = 0;
                    img(y,x,2) = 255;
                    img(y,x,3) = 255;                
            end % switch
        end % for y
    end % for x

    figure(1);
    image(img);
    axis equal;
    title('Teris');

end % konec fce
