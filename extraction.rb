require 'date'
class Extractor
	def extract_from(string)
		match_array = string.scan(/\d{1,2}\/\d{1,2}\/\d{2,4}/)
		#date_values = match_array[0].split(/\//)
		

		#year = date_values.last.to_i + 2000
		#month  = date_values[1].to_i
		#day = date_values.first.to_i

		return Date.parse(match_array[0])
	end
end

#extraction = Extractor.new
#print extraction.extract_from "You have till 07/10/14"
