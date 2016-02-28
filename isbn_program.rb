def length_of_isbn(isbn_number)
	if isbn_number.length == 10
		true
	elsif isbn_number.length == 13
		true
	else
		false
	end
end
