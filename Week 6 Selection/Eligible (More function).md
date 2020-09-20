# Question
![1](https://user-images.githubusercontent.com/65822379/93714865-0fa54b80-fb83-11ea-9457-ceec758b4d07.png)

# Answer 
function admit=eligible(v,q)  
avg=(v+q)/2  

   if avg>=92  
    admit=(v>88) && (q>88);  
   else  
    admit =~v;  
end  
