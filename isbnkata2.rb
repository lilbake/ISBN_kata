def valid_isbn?(isbn_number)
	remove_dashes_spaces(isbn_number)
	correct_length?(isbn_number)

end

def correct_length?(isbn_number)
	if isbn_number.length == 10
		true
	elsif isbn_number.length == 13 && valid_13_isbn?(isbn_number)
		true
	else
		false
	end
end

def remove_dashes_spaces(isbn_number)
		isbn_number.delete! ("-")
		isbn_number.delete! (" ")
end

def valid_13_isbn?(isbn_number)
	if isbn_number[0] == "4"
		false
	else
		true
	end
end

def string_to_array(string)
	string.split("")
end

def multiply_array(input_array)
	array = []
	input_array.each_with_index do |value, index|
		value = value.to_i
		if index % 2 == 0
			array << value * 1 
		else
			array << value * 3
		end
	end
	array 
end

def sum_of_items(array_of_num)
	sum = 0
	array_of_num.each do |value|
		sum = sum + value
	end
	sum 
end








