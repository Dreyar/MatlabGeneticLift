function[population]=randpopulation(plithosPlithismou,arithmosGonidiwnChrom,arrayEntry)

%Ypologismos kai Arxikopoihsh pli8ismou
for i=1:plithosPlithismou
    for j=1:arithmosGonidiwnChrom
            population(i,j)=randint(1,1,arrayEntry(j,2));
    end;
end;
end 