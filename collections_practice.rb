def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort do |a,b|
        if a == b
            0
        elsif a > b 
            -1
        elsif a < b
            1
        end
    end
end

def sort_array_char_count(array)
    array.sort do |a,b|
        a.length <=> b.length
    end
end

def swap_elements(array)
    array.sort do |a,b|
        if a == array[1] && b == array [2]
            1
        else
            0
        end
    end
end

def swap_elements_from_to(array, index, destination_index)
    array.sort do |a,b|
        if a == array[index] && b == array[destination_index]
            a = array[destination_index]
              b = array[index]
        else
            0
        end
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    kesha_array = []
    array.each do |word|
        letters = word.chars
        letters[2] = "$"
        kesha_array << letters.join
    end
    kesha_array
end

def find_a(array)
    array.select do |word|
        word.start_with?("a")
    end
end

def sum_array(array)
    array.delete_if do |element|
        element.is_a?(Integer) == false
    end
    # sum = 0
    # array.each do |num|
    #     sum += num
    # end
    # sum
    array.inject(0) do |sum, x|
        sum + x
    end
end

def add_s(array)
    array.each_with_index.collect do |element, index|
        index != 1? element << "s" : element
    end
end