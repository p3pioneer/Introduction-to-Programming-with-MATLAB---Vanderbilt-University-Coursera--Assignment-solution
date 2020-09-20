function charnum=char_counter(fname,character)

fid=fopen(fname,'rt');
if fid<0
    charnum=-1;
else    
read=fgets(fid);
charcount=0;

if ischar(character)==false
    charnum=-1;
else
    
while ischar(read)
    charact=strfind(read,character);
    charcount=charcount+length(charact);
    read=fgets(fid);
end

charnum=charcount;
end
end
fclose(fid);
end


%char_counter('simple.txt',11)
%char_counter('Frankenstein-by-Shelley.txt','a')