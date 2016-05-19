function[mutate]=mutation(atom1,arrayEntry)

%Tyxaia epilogi gonidiou
nmut=randint(1,1,length(atom1)-1)+1;
posotitaAllaghs=randint(1,1,arrayEntry(nmut,2));

%metalaki 
mutate=[[atom1(1,(1:nmut-1))],[posotitaAllaghs],[atom1(1,(nmut+1:length(atom1)))]];

end