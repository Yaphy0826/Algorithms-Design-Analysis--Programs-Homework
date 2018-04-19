function [ Num_Inversion] = Test( )


[Sorted, Num_Inversion]=Calculate_Inversion(textread('IntegerArray.txt'), 1, length(textread('IntegerArray.txt')));

end

