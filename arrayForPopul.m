function[arrayEntry]=arrayForPopul(katigories,orioKa,orioPo)

%Dimiourgi8ika tuxaia apo to inputArray pou tou dosame

%Eidi kalodiou
  A=unique(randint(katigories,1,orioKa-1)+1);
  while length(A)<katigories
    A=unique(randint(katigories,1,orioKa-1)+1);
  end
  
%Posotita
  B=randint(katigories,1,orioPo-1)+1;
  C=A+1;
  arrayEntry=[C,B];    
end
