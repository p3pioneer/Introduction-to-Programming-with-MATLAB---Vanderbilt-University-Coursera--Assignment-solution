function coded =caesar(a,b)
m=b-95*fix(b/95)    %just formula to make shift in range of 32 to 126 (126-32=94)
for i=1:length(a)
if double(a(i))+m>126
    shift(i)=32+(m-127);
elseif double((a(i))+m)<32
    shift(i)=126+(m-31);
else
    shift(i)=m;
end
original(i)=char(a(i));
coded(i)=char(original(i)+shift(i));
end
end


%%solution1
%function y = caesar2(ch, key)
   % v = ' ' : '~';
    %[~, loc] = ismember(ch, v);
    %v2 = circshift(v, -key);
    %y = v2(loc);
%end

%solution2
%function txt = caesar(txt,key)
 %   txt = double(txt) + key;
  %  first = double(' ');
   % last = double('~');
    % use mod to shift the characters - notice the + 1
    % this is a common error and results in shifts 
    % being off by 1
    %txt = char(mod(txt - first,last - first + 1) + first);
%end
    