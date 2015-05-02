class Crack
	def self.make_beautiful_data
		openFile = File.open("thousandDigitNumber.txt")
		data = openFile.read
		openFile.close
		data2 = data.split("\n").join("").split("")
		data2 
	end

	def self.get_Products
		productArray = []
		product = 1
		counter = 1
		
		make_beautiful_data.each do |number|
			product = product * number.to_i
			if counter%4 == 0
				productArray << product
				product = 1
			end	
			counter += 1
		end

		productArray
	end

	def self.get_greatest_product
		product_list = get_Products.sort{|a, b| a<=>b}
		product_list[-1]
	end
end