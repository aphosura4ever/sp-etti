%E1. Exercitiu.  
%Fie vectorii linie a=[0,0.1,0.2, ,2] si coloana b=[1...1]
 %a) Ce lungime trebuie sa aiba b astfel ca sa aiba sens �nmultirea 
%(�n sens matricial) a*b? Ini?ializa?i �n MATLAB cei doi vectori si 
%realizati �nmultirea. Ce operatie se efectueaza? 
%b) Realizati �nmultirea b*a. 
%c) Realizati �nmultirea element cu element a celor doi vectori. 
%Ce rezultat se obtine? 
 
% a)
a=0:0.1:2
c=ones(1,21) %creez un vector linie cu 21 de 1
b=c';%transpusul lui c devine b si astfel am obtinut vectorul coloana cu 21 
%de 1 

% b trebuie sa aiba o singura coloana cu 21 linii pentru ca a*b sa aiba sens
a*b
% b)

b*a

%c)

a.*b

%Inmultirea element cu element va conduce la o eroare. Pentru ca inmultirea
%element cu element sa aiba sens trebuie sa se inmulteasca 2
%vectori linie sau 2 vectori coloana