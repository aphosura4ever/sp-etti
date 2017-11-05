%E4. Exerci?iu: Realiza?i un program MATLAB în care s? genera?i ?i s? 
%reprezenta?i grafic folosind func?ia stem urm?torii vectori: 

n1=-15:25;
n2=0:50;

x1=sin(pi*n1/17);
x2=cos(pi*n2/sqrt(23));
subplot(2,1,1);
stem(n1,x1),grid,title('x1');
subplot(2,1,2);
stem(n2,x2),grid,title('x2');
