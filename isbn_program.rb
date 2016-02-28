def length_of_isbn(isbn_number)
	if isbn_number.length != 10 || 13
		false
	end
end
