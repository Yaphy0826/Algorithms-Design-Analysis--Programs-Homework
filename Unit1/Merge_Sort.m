function [ Sorted_array ] = Merge_Sort( array, start_index, end_index )

if start_index==end_index
    Sorted_array=array(start_index);
    return
end

Left_temp=Merge_Sort(array,start_index,floor((start_index+end_index)/2));

Right_temp=Merge_Sort(array,floor((start_index+end_index)/2)+1,end_index);

Sorted_array=Merge(Left_temp,Right_temp);

end

