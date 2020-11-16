def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort {|x, y| y <=> x}
end

def sort_array_char_count(array)
    array.sort do |x, y|
        if x.size == y.size
            0
        elsif x.size < y.size
            -1
        elsif x.size > y.size
            1
        end
    end
end

def swap_elements(array)
    temp = array[1]
    array[1] = array[2]
    array[2] = temp
    array
end

# def swap_elements_from_to(array, index, destination_index) 
#     temp = array[index]
#     array[index] = array[destination_index]
#     array[destination_index] = temp
#     array
# end

# puts swap_elements_from_to(["a", "b", "c"],0,2)
# puts swap_elements_from_to(["a", "b", "c"],2,1)

def reverse_array(array)
    array.reverse
end 

def kesha_maker(array)
    array.each do |element|
        element[2] = "$"
    end
end

def find_a(array)
    array.select do |element|
        element.start_with?("a")
    end
end

def sum_array(array) 
    # sum = 0
    # array.each {|number| sum += number}
    # sum

    # advanced version, using #inject
    array.inject {|sum, number| sum + number}
end 

def add_s(array)
    # array.collect do |word|
    #     array.index(word) == 1 ? word : word << "s"
    # end 

    # advanced version, chaining #each_with_index and #collect
    array.each_with_index.collect {|element, index| index == 1 ? element : element << "s"}
end