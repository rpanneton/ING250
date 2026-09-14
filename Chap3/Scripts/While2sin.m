%% Battement de deux ondes
%%
clear; home; close all
deltaDegre = 2*pi/(1000-1);
x = zeros(1,1000); % pseudodéclaration
y1_et_y2 = zeros(1,1000);
i = 1;
while(i<=1000)
   x(i) = (i-1)*deltaDegre;
   y1 = sin(20*x(i));
   y2 = sin(18*x(i));
   y1_et_y2(i) = y1+y2;
   i = i + 1;
end

% for i = 1:1000
%    x(i) = (i-1)*deltaDegre;
%    y1 = sin(20*x(i));
%    y2 = sin(18*x(i));
%    y1_et_y2(i) = y1+y2;
% end

plot(x,y1_et_y2);
title('Battement de y_1=sin(20 x) et y_2=sin(18 x)');
ylabel('Amplitude');
xlabel('\omega (radians/s)');
grid on;