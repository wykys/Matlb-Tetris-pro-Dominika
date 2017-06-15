function [ key ] = get_key()
%   pokud je stiskla klavesa vrati ji
    key = get(gcf,'currentcharacter'); % preste klavesu s bufferu
    set(0,'CurrentFigure',1); % nastavi focus
    set(gcf,'currentcharacter','@'); % nastavi hodnotu v bufferu  
end

