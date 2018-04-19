




function [Sorted_array, Num_inversion] = Calculate_Inversion( array, start_index, end_index )

if start_index==end_index
    Sorted_array=array(start_index);
    Num_inversion=0;
    return
end

[Left_temp, Num_left]=Calculate_Inversion(array,start_index,floor((start_index+end_index)/2));

[Right_temp, Num_right]=Calculate_Inversion(array,floor((start_index+end_index)/2)+1,end_index);

[Sorted_array, Merge_Num_Inversion]=Merge_Inversion(Left_temp,Right_temp);

Num_inversion=Num_left+Merge_Num_Inversion+Num_right;
end

