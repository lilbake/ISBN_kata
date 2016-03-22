require_relative "class_isbn_kata_test.rb"
require "csv"

file = File.open("duplicate_isbn_examples.csv", "w")

CSV.foreach('input_isbn_file.csv') do |row|
	if row[0] == "ITEMS"
		isbn_check == "CHECKS"
	elsif valid_isbn?(row[1]) == true
		isbn_check = "VALID"		
	else
		isbn_check = "INVALID"
	end
	file << row[0].to_s + ", " + row[1].to_s + ", " + isbn_check + "\n"	
end

file.close