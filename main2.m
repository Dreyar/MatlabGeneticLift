function[main2]=main2()

numPopulation = 50;
numOfGenes = 15;
apostasi = 5000;

%Pinakas arxeiou eisodou
%200 = max megethos kalodiou
%100 = max temaxia
inputArray=arrayForPopul(numOfGenes,200,100);

%Pinakas Plithismou
pop = randpopulation(numPopulation,numOfGenes,inputArray);

%Arxikopoihsh Genion, Topiko veltisto, 
genies = 0;
topikoVeltisto = 0;
solution = 0;

while(genies<101 && topikoVeltisto<10 && solution==0)
    
    %Apothikeusi ton katigorion ton kalodion
    first = inputArray(:,1);
    
    %Epistrofi pi8anotiton pou exei ka8e atomo gia anaparax8ei 
    fit = fitness(first,pop,apostasi);
    
    
    max = fit(1,1);
    
    for j = 1:numPopulation
        if fit(j,1)>max
            max = fit(j,1);
        end;
        if fit(j,1)==0
            fitPerfect = 0;
            solution = 1;
        end;
    end;
        
    %Upologismos Neou Pli8ismou
    i = 0;
    popNew = [];
    while (i<numPopulation)
        
        sel = selection(first,pop,apostasi);
        
        crs = randint(1,1,100);
        mut = randint(1,1,100);
        counter = 0;
        
        if crs < 81 
            atom=crossover(pop(sel(1,1),:),pop(sel(1,2),:));
            counter=1;
        end
        if mut < 11 
            atom=mutation(pop(sel(1,mod(i,2)+1),:),inputArray);
            counter=1;
        end;
        if counter==0
            atom=pop(sel(1,mod(i,2)+1),:);
        end
        
        i = i + 1;
        
        %Eisagogi apogonoi sto neo pli8ismo 
        popNew=cat(1,popNew,atom(1,:));
        
    end
    
    pop = popNew;
        
    %Kalutero atomo sti nea genia    
    newFit = fitness(first,pop,apostasi);
    newMax = newFit(1,1);
    for j=1:numPopulation
        if newFit(j,1) > newMax
            newMax = newFit(j,1);
        end;
    end;
    
    %Topika Veltista
    if max == newMax
        topikoVeltisto = topikoVeltisto + 1;
    end;
    
    %Elegxos gia lusi
    for j=1:numPopulation
        if newFit(j,1) == 0
            fitPerfect = j;
            solution = 1;
        end;
    end;
    
    genies = genies + 1;
    
end;

%Emfanisi atomo me veltisti lusi

if solution == 1 
    inputArray
    pop(fitPerfect,:)
    if(pop(betterFit,:)*first ~= 5000)
        fprintf('\n H Lusi Einai Adunati, kontinotero apotelesma: \n\n')
    end;
    pop(betterFit,:)*first
    topikoVeltisto
    genies
else
    fit = fitness(first,pop,apostasi);
    max = fit(1,1);
    betterFit = 1;
    for j=1:numPopulation
        if fit(j,1) > max
            max = fit(j,1);
            betterFit = j;
        end;
    end;
    inputArray
    pop(betterFit,:)    
    if(pop(betterFit,:)*first ~= 5000)
        fprintf('\n H Lusi Einai Adunati, kontinotero apotelesma: \n\n')
    end;
    pop(betterFit,:)*first
    topikoVeltisto
    genies
end;

end