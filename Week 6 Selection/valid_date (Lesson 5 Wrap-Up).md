# Question  
![1](https://user-images.githubusercontent.com/65822379/93715006-1bddd880-fb84-11ea-871f-995c60eb29c5.png)

# Answer  
function valid=valid_date(year,month,day)  
valid=false;  
if(isscalar(year)==0||isscalar(month)==0||isscalar(day)==0||year<=0||month<=0||day<=0)  
    
    valid=false;  
 return  
 
else  
    
    vy1=mod(year,4)==0 && ~mod(year,100)==0  
    vy2=mod(year,4)==0 && mod(year,400)==0  
    vy=vy1 ||vy2  
    if vy==1      %leapyear 
        if month==2&&day<=29  
          valid=true;  
        elseif (month==1||month==3||month==5||month==7||month==8||month==10||month==12) && day<=31  
            valid=true;  
        elseif  (month==4||month==6||month==9||month==11) && day<=30  
            valid=true  
            
             
        end  
    else  
        if month==2&&day<=28  
            valid=true;  
        elseif (month==1||month==3||month==5||month==7||month==8||month==10||month==12)&& day<=31  
            valid=true;  
          elseif  (month==4||month==6||month==9||month==11)&& day<=30  
            valid=true;  
        end  
    end  
end  
end
