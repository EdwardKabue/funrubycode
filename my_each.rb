class Array
	def my_each
		counter = 0
		until counter == size
			yield(self[counter])
			counter += 1
		end
		self
	end
end

class Integer
	def my_times
		counter = 1..self
		counter_array = counter.to_a
		counter_array.my_each do |number|
			yield number-1
		end
		self
	end
end

5.my_times {|num| puts "I'm on iteration number #{num}"}			

