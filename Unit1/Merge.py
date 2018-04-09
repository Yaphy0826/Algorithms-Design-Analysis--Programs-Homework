
#This method is the Merge subroutine in Merge Sort algorithm


def Merge(array1, array2):
    i=0
    j=0    
    array=[]
    while i<len(array1):
        while j<len(array2):
            if array1[i]<array2[j]:
                array.append(array1[i])               
                i=i+1             
            array.append(array2[j])           
            j=j+1
    return array
            
                
print (Merge([1],[3]))
