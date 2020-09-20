function indices=saddle(M)
[a b]=size(M);
indices=[];
nosaddlepoint=[];
if M==0
    
[indices(:,1) indices(:,2)]=find(M==0);
end
if b<2
    [indices(:,1) indices(:,2)]=find(M==min(M))

elseif a<2
    [indices(:,1) indices(:,2)]=find(M==max(M));
    
end

j=1;
for i=1:a
[max_no(i,1) max_no(i,2)]=max(M(i,:));
[min_no(i,1) min_no(i,2)]=min(M(:,max_no(i,2)));
if min_no(i,1)==max_no(i,1)
    indices(j,1)=i;
    indices(j,2)=max_no(i,2);
    j=j+1;
end
end
indices=[nosaddlepoint ;indices];

end




%notcorrectfully

%%solution
function s = saddle(M)
[r, c] = size(M);
% Initialize the saddle points to an empty array
s = [];
% Check the dimensions to see if input is a row or column vector
if r > 1
    cols = min(M);          % find the min value in each column if more than 1 row
else
    cols = M;               % vector is a special case, min would give a single value
end
if c > 1
    rows = max(M');         % find the max value in each row
else
    rows = M;               % vector is a special case, max would give a single value
end
for ii = 1:c                % visit each column
    for jj = 1:r            % and each row, that is, each element of M
        if M(jj,ii) == cols(ii) && M(jj,ii) == rows(jj) % if both conditions hold
            s = [s; jj ii];                             % saddle point! Let's add it!
        end
    end
end
           