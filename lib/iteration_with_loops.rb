def join_nested_strings(src)
    # src will be an Array of Arrays of Strings and Integers
    # Combine all Strings present in the AoA into a single value and return it

    row_index = 0
    final_string_array = []
    while row_index < src.length do
        column_index = 0
        while column_index < src[row_index].length do
            if src[row_index][column_index].kind_of?(String)
                final_string_array << src[row_index][column_index]
            end
            column_index += 1
        end
        row_index += 1
    end
    final_string_array.join(" ")
end

p join_nested_strings([["Hi", 1, "there."], ["My", 2, 5, "name", 10, "is Megan"]])