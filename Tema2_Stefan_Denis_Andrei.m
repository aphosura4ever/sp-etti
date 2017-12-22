k=-50:1:50;
T=40;%perioada
f=1/40;%frecventa 
wo=2*pi*f;
duty=(17/40)*100;%factorul de umplere al semnalului conform  num?rul de
%ordine (17) din lista cu studenti funizata de seful grupei
timp=-80:0.2:80;%rezolutie temporala pentru afisarea a 4 perioade

figure (1)

sq=0.5+0.5*square(2*pi*1/40*timp,duty);%semnalul dreptunghiular
subplot(2,1,1)
plot(timp,sq),grid,axis([-80 80 -0.5 1.5]),xlabel('timp(s)'),
ylabel('Amplitudine'),title('Semnal Dreputunghiular');%afisarea semnalului

%Calculul coeficientilor
syms t %creez o variabila simbolica pentru a face posibila integrarea 
Xk=1/40*int(1*exp(-i*k*2*pi*f*t),t,0,17)%sparg integrala in 2, cu capete
%de la 0 la 17 si de la 17 la 40. Integrala de la 17 la 40 este 0 pentru 
%ca semnalul pe acea portiune e 0.

%Spectru de Amplitudini

Ak=2*abs(Xk) %formula obtinuta la cursul de SS

Ak(51)=1/40*17 %componenta continua C(0)= 1/P* integrala din x(t) pe o perioada
%Este necesara calcularea acesteia in acest mod pentru ca exista un caz
%de nedefinire pentru ca Xk va fi egal cu (j/(2*k*pi))*(....) . Asadar am 
%calculat componenta continua cu formula specifica.
subplot(2,1,2)
stem(k,Ak),grid,axis([-5 5 0 1]),xlabel('k'),
ylabel('Ak'),title('Spectrul de Amplitudini');%afisarea spectrului;


figure (2)  %Figura 2 cu reconstructia semnalului
 
clear

T=40;
f=1/40;
wo=2*pi*f;
duty=(17/40)*100;

kneg=-50:-1;  %Am decis sa impart N=-50:1:50 in pozitiv, negativ si 0
%pentru ca C(0) va duce la un caz de nedefinire pentru ca 
%Xk va fi egal cu (j/(2*k*pi))*.... .Asadar am sa calculez componenta
%continua cu formula specifica.
kpoz=1:50;
 k=kneg;
 Cneg=j*(exp(-j*k*34/40*pi)-1)./(2*pi*k);
 k=kpoz;
 Cpoz=j*(exp(-j*k*34/40*pi)-1)./(2*pi*k);
 C0=17/40;
 k=[kneg,0,kpoz]; %concatenez k
 C=[Cneg,C0,Cpoz];%concatenez coeficientii 
 n=0;
 for t=-80:.02:80
n=n+1;
%creez un vector ftrunc care ia valoare fiecarei sume dintre 
%elementele vectorului C.*(exp(j*k*2*pi*t/40)) la fiecare moment de timp

ftrunc(n)=sum(C.*(exp(j*k*2*pi*t/40)));%scriu functia pentru recontructia
%semnalului
end
 t=-80:.02:80;
 sq=0.5+0.5*square(2*pi*1/40*t,duty);
 
 subplot(2,1,1);
 plot(t,real(ftrunc),':b',t,sq,'k'),grid,xlabel('timp(s)'),
ylabel('Amplitudine'),title('Reconstructia semnalului N=50');%afisarea semnalului
 %reconstructia semnalului peste semnalul dreptunghiular pentru a se 
 %vedea diferenta dintre cele doua
 
 subplot(2,1,2);
 plot(t,real(ftrunc),':b',t,sq,'k'),grid,axis([-5 45 -0.2 1.2 ]),xlabel('timp(s)'),
ylabel('Amplitudine'),title('Reconstructia semnalului N=50');

%zoom in pe reconstructie



