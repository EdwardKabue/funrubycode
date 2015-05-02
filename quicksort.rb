class Array

	def swap(a, b)
		a = a^b
		b = a^b
		a = a^b
	end

	def are_elements_numbers?
		flag = true
		self.each { |element|
			unless element.is_a?(Integer) || element.is_a?(Float)
				flag = false
			end	
		}
		return flag
	end

	def partition
		if !are_elements_numbers?
			puts "Sorry but the array elements are not numbers."	
		else	
			pivot_index = self.length/2
			for i in 0..(self.length-1)
				if self[i] > self[pivot_index] && i < pivot_index
					swap(self[i],self[pivot_index])
					swap(i,pivot_index)
					
		end	

	end
end