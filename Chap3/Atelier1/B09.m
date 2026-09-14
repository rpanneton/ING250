%% B09
clear
disp('Écrire 0 pour terminer')
i=1:1:infinity
d=input('donnée i :');
while(d~=0)
   d=d+1;
   v=[d:1;1];
   moyenne=mean(d)
   deviation=v-mean(d)
end
moyenne
v
deviation
