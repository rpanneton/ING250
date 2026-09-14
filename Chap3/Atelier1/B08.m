%% B08
clear
total=0;
t=1;
i=0;
while t~=0
   i=i+1;
   t=input('donnée : ')
   total=total+t;
   t(i)=t;
end
moyenne=total(i-1)
deviation=t-moyenne;
[t,deviation]