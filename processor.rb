File.open("text.txt", "r+") do |file|
	file.each_line { |line| print line.chomp + "," }
end	