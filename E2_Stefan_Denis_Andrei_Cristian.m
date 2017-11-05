 %E2.Realiza?i un program MATLAB care s? genereze un vector cu elemente 
 %aleatoare cu distribu?ie normal? (gaussian?) ?i s? afi?eze elementele
 %negative ale acestui vector. 
 
 
v=randn(1,10) % matrice 1 linie 10 coloane (un vector linie) cu elemente
%aleatoare cu distributie normala (gaussiana).

for i=1:1:10 %bucla for 
    if(v(i)<0) %conditia pentru a gasi numere negative
        a=v(i) %afisez pe rand cate un numar negativ gasit
    end
end
