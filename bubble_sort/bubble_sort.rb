def bubble_sort(array)

    len = array.length;
    return puts "array is empty" if len <= 1 
    swapped = true;
    while swapped do
        swapped = false;
        (len - 1).times do |i|
            if(array[i] > array[i+1])
                array[i], array[i+1]=array[i+1], array[i]
                swapped = true
            end
        end
    end
    array
end


array = [17,3,6,9,15,8,6,1,10];
array2 = [];

p bubble_sort(array);
p bubble_sort(array2);