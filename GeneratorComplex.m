function  [mn,patrat,matrice]=GeneratorComplex(z)

mn=mean(real(z))  %media aritmetica a partilor reale  

patrat=z.*z %inmultest vectorii element cu element 

matrice=z*z.' % prin " .' " obtin transpusul lui z.
    

end

