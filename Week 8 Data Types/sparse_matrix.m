function matrix=sparse2matrix(cellvec)
sizee=cellvec{1,1};
matrix(1:sizee(1),1:sizee(2))=cellvec{1,2};
c=length(cellvec);
for i=1:c-2
    size=cellvec{1,i+2};
  matrix(size(1,1),size(1,2))=size(1,3);
end
end
