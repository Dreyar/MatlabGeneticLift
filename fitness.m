% Orismos Sinartishs:
function[fit]=fitness(pinMikosSwlinwn,population,D)


% To select apothikeuei ta  atoma
fit=[];

% Apothikeush tou arithmou twn diaforetikwn
% xrwmoswmatwn diladi atomwn 
sizeHelp=size(population);
plithosPopul=sizeHelp(1,1);

% Ypologismos tou kathe apotelesmatos gia kathe
% xrwmoswma
for  j=1:plithosPopul
    
    sunolikoMikosChrom(j)=population(j,:)*pinMikosSwlinwn;
    % Arxikopoihsh pinaka fitness
    fit(j,1)=0;
   
end;

% Athroisma telikwn vathmwn
sumTelikoSfalma=0;


% Ypologismos sfalmatos gia kathe atomo
for  i=1:plithosPopul
    sfalma(i,1)=abs(sunolikoMikosChrom(1,i)-D);
    
    if sunolikoMikosChrom(i) > D
       telikoSfalma(i,1)=sfalma(i,1)*2;
    else
       telikoSfalma(i,1)=sfalma(i,1); 
    end
    
    sumTelikoSfalma=sumTelikoSfalma+telikoSfalma(i,1);
    
    % Pinakas Pou tha xrisimopoihthei gia tis pithanotites
    pinPith(i,1)=0;
end;

% Anagogh Pinaka Telikwn Sfalmatwn se Pinaka me Pithanotites
for  i=1:plithosPopul
     pinPith(i,1)=telikoSfalma(i,1)*100/sumTelikoSfalma; 
end;

% Ypologismos Fitness kathe Atomou
pita=0;
for  i=1:plithosPopul
     if pinPith(i,1) ~= 0  
        pita=pita+(1/pinPith(i,1));
     end;   
end;
for  i=1:plithosPopul
    if pinPith(i,1)==0
        fit(i,1)=0;
    else 
        fit(i,1)=100/(pinPith(i,1)*pita);
    end
end;

end