# Question
![1](https://user-images.githubusercontent.com/65822379/93714921-7fb3d180-fb83-11ea-8910-ceb3a5aef04e.png)

# Answer 
function too_young=under_age(age,limit)  
if nargin<2  
    limit=21;  
    too_young =(age<limit);  
else    
    too_young = (age<limit);  
    
end  
