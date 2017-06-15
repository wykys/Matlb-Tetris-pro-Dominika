function [ box ] = put_box()
%	vrati matici s
%   preudonahodnou kostkou
%   pseudonahodne otocenou
    
    kostky; % prida definice kostek

    % vygenetujeme preudonahodna cisla
    b = int16(mod(rand(1)*10 + rand(1)*10, box_number) + 1);
    r = int16(mod(rand(1)*10 + rand(1)*10, box_number) + 1);
    
    % priradime vhodnou krabici
    switch b
        case 1
            box = box_I;
        case 2
            box = box_J;
        case 3
            box = box_L;
        case 4
            box = box_O;
        case 5
            box = box_S;
        case 6
            box = box_T;
        otherwise
            box = box_Z;
    end
    
    % otocime krabici
    for i=1:r
        box = rot_box(box);
    end

end

