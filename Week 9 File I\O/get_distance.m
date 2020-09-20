function distance=get_distance(a,b)
A=char(a);
B=char(b);
[num,text,raw]=xlsread('Distances.xlsx');
if sum(sum(strcmp(A,text)))==false||sum(sum((strcmp(B,text))))==false
    distance=-1;
else
loct1=find(strcmp(A,text)==1) ;  
loct2=find(strcmp(B,text)==1);

distancec=raw(loct1(1),loct2(1));
distance=double(distancec{1,1});
end
fclose(fid);
end
%get_distance('Seattle, WA','Miami, FL')