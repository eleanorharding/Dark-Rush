clear all
close all
r = 20;

p_pos = [0,0; 8,-8; -6,-6; -8,-10; 9,5; -6,6];
p_str = [15, 3, 4, 8, 6, 1];
[x,y] = meshgrid(-r:.1:r,-r:.1:r);

Fsum = zeros(size(x));

for i = 1:length(p_pos);
    
Fsum = Fsum + p_str(i)*sqrt((x - p_pos(i,1)).^2 + (y-p_pos(i,2)).^2);


end

h = figure(1)
%set(h,'Position',[100,100,500,500])

contour (x,y,Fsum,30), hold on, axis square
plot(x(1,:), sqrt(r^2 - x(1,:).^2), 'k')
plot(x(1,:), -sqrt(r^2 - x(1,:).^2), 'k')
%quiver(x,y,Fsum), hold off

for i = 1:length(p_pos)
    plot(p_pos(i,1), p_pos(i,2), '.k', 'MarkerSize',p_str(i)*10)
    %plot(p_pos(i,1), p_pos(i,2),'ko')
end

%quiver(x,y,F), hold off