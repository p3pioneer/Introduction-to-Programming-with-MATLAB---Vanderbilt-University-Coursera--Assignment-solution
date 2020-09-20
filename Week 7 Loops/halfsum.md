# Question  
![1](https://user-images.githubusercontent.com/65822379/93715166-3f555300-fb85-11ea-97ac-85b4512c3de5.png)

# Answer  
function summa=halfsum(a)  
[row,col] =size(a);  
summa=0;  
for i=1:row  
       for j=i:col  
         summa=summa+a(i,j);  
     end  
end  
end
