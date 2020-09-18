# Question
![1](https://user-images.githubusercontent.com/65822379/93563957-8a653f80-f9a6-11ea-8076-16320f428d04.png)

# Answer
function [top_left,top_right,bottom_left,bottom_right]=corners(a)  
top_left=a(1,1);  
top_right=a(1,end);  
bottom_left=a(end,1);  
bottom_right=a(end,end);  
end
