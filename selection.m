
function[select]=selection(pinMikosSwlinwn,population,D);


%Apo8ikeuoyme ta 2 atoma
select=[];

%Fitness atomou 
fit=fitness(pinMikosSwlinwn,population,D);


%Tuxaia epilogi protou gonea 

%Tuxaio moumero gia epilogh gonea 
goneas=rand(1,1)*100;

count=0;
sum=0;
for  i=1:length(fit)   
   if(fit(i,1)==0)
       count=1;
       select(1,1)=i;
   end;
   
   if(count==0) 
     sum=sum+fit(i,1);
     % Epilogh Gonea Kathgorias apo tin Lista  
     if goneas <= sum
           select(1,1)=i;
           count=1;
     end;
   end; 
end;

%Tuxaia epilogi prwtou gonea

%Tuxaio moumero gia epilogh gonea 
goneas=rand(1,1)*100;

%Metabliti gia break
count=0;
sum=0;
for  i=1:length(fit) 
   
    if(fit(i,1)==0)
       count==1;
       select(1,1)=i;
    end;    
   
    
    if(count==0) 
     sum=sum+fit(i,1);
     %Epilogh Gonea Kathgorias apo tin Lista  
     if goneas <= sum
           select(1,2)=i;
           count=1;
     end;
   end; 
end;

end