def valid_isbn?(isbn_number)
	remove_dashes_spaces(isbn_number)
	non_numerical_characters(isbn_number)
	length_of_isbn(isbn_number)
end

def length_of_isbn(isbn_number)
	if isbn_number.length == 10 || isbn_number.length == 13
		true
	else
		false
	end
end

def remove_dashes_spaces(isbn_number)
		isbn_number.delete! ("-")
		isbn_number.delete! (" ")
end

def non_numerical_characters(isbn_number)
	if isbn_number =~/\D/
		false
	end
end







