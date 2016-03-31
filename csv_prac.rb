require_relative ""

require "csv"

file = File.open("csv_practice_sheet.csv", "w")

CSV.foreach('eagle_roster.csv') do |row|
	if row[0] == "num"



	end
	file  << row[0].to_s + "," + row[1].to_s + "," + row[2].to_s + "," + row[3].to_s + "," + row[4].to_s + "," + row[5].to_s + "," row[6].to_s + "," + row[7].to_s + "\n"
end







file.close
