function dessine(u,v)
%Réponse graphique à la question 1 du laboratoire 1
%u et v sont des vecteurs contenant deux éléments.
close
hold on;
axis on
axis equal
axis([-8 8 -6 6]);
plot([-8 8],[0 0],'m-')
plot([0 0],[-6 6],'m-')
plot([0,u(1)],[0,u(2)],'g')
plot([u(1),u(1)+v(1)],[u(2),u(2)+v(2)],'c')
plot([0,u(1)+v(1)],[0,u(2)+v(2)],'b-')
text(u(1)/2,u(2)/2,'V1')
text(u(1)+v(1)/2,u(2)+v(2)/2,'V2')
text((u(1)+v(1))/2,(u(2)+v(2))/2,'Rés')
grid
hold off;
