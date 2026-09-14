function batons(y)
% Diagramme de bâtons
% Programmer un outil de visualisation permet de
% transformer les données en information.
% 
figure(2); set(gcf,'Position',[50,50,400,300]);
set(gcf,'Name',...
   'Temp. °C en nov. 2010');
set(gcf,'ToolBar','none','MenuBar','none');
bar(y); grid on;
set(gca,'XTickLabel',...
   [' T < 0 ';'0<=T<5 ';'5<=T<10';'T >= 10']);
colormap lines
ylabel('Nombre d''heures');