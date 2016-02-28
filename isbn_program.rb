def length_of_isbn(isbn_number)
	if isbn_number.length == 10
		true
	 elsif isbn_number.length == 13
		true
	else
		false
	end
end

def remove_dashes_spaces(isbn_number)
	if isbn_number.include? "-"
		isbn_number.delete! "-"
	elsif isbn_number.include? " "
			isbn_number.delete! " "
	end
	isbn_number

end




