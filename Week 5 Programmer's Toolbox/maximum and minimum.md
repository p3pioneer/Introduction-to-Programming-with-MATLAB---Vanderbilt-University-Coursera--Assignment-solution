# Question
![1](https://user-images.githubusercontent.com/65822379/93714565-35c9ec00-fb81-11ea-9e89-b3387290f571.png)

# Answer  
function [mmr,mmm]=minimax(M)  
diff=max(M')-min(M');  
mmr=abs(diff);  
mmm=max(max(M))-min(min(M));  
end
