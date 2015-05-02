class EvenSum
	def self.findEvenSum(x)
		summation=0
		fibonacciSequence=[1,2]
		fibonacciSequence[2]=fibonacciSequence[1]+fibonacciSequence[0]
		i=2
		while fibonacciSequence[i] < x do
			i+=1
			fibonacciSequence[i]=fibonacciSequence[i-1]+fibonacciSequence[i-2]
		end
		
		fibonacciSequence.each do |number|
			next if number%2!=0
			summation+=number
		end
		summation
	end
end