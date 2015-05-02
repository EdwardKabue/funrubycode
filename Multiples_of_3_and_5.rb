class Adder
	def self.addEmUp(x)
		multipleHolder=0
		1.upto(x){|number|
			if number%5==0||number%3==0
				multipleHolder+=number
			end
		}
		return multipleHolder
	end
end
