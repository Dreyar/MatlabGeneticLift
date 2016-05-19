function[cross]=crossover(atom1,atom2)

cross=[];
%Shmeia kopis
nkop=randint(1,1,9)+1;

%Simeia kopis sto xromosoma

a=unique(randint(1,nkop,length(atom1)+1));
ind=true;
past=1;

%Efarmogh tou crossover analoga me ta shmeia kophs
%Ypologismos crossover mexri to teleytaio shmeio kophs sto xrwmoswma

for  i=1:length(a)
    if ind==true
        cross=[cross,atom1(1,past:a(1,i))];
        ind=false;
    else
        cross=[cross,atom2(1,past:a(1,i))];
        ind=true;
        
   end;
   past=a(1,i)+1;
end;

% Ypologismos ap to teleutaio shmeio kophs mexri to telos tou xrwmoswmatos
if(ind==true)
    cross=[cross,atom1(1,past:length(atom1))];
   
else
    cross=[cross,atom2(1,past:length(atom2))];
end