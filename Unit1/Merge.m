function Merged_array=Merge(array1,array2)
%This function is the Merge subroutine that aims at merging two sorted
%arrays into sorted one.

i=1;j=1;k=1;
while(1)
    if i>length(array1)
        Merged_array(k:length(array1)+length(array2))=array2(j:length(array2));
        k=k+length(array2)-j+1;
    elseif j>length(array2)
        Merged_array(k:length(array1)+length(array2))=array1(i:length(array1));
        k=k+length(array1)-i+1;
    else
        if array1(i)<array2(j)
            Merged_array(k)=array1(i);
            i=i+1;k=k+1;
        elseif array1(i)>=array2(j)
            Merged_array(k)=array2(j);
            j=j+1;k=k+1;
        end       
    end
    if k>length(array1)+length(array2)
        break
    end
end
end