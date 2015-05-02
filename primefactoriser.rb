class PrimeFactoriser
	def self.is_prime(x)
		for i in 2...x do
			if x%i==0
				return false
			end
		end
	end

	
	def self.factorise(number)
		factorArray=[]
		primefactorArray=[]
		if !is_prime(number)
			for i in 2...number
				if number%i==0
					factorArray.push(i)
				end
			end
			factorArray.each do |factor|
				if is_prime(factor)
					primefactorArray.push(factor)
				end	
			end
			j=0
			allprimes=[]
			primefactorArray.each do |primefactor|
				while  number%primefactor**j==0 do
					j=j+1
				end	
				for k in 1...j
				 allprimes.push(primefactor)
				end
				j=0
			end
			return allprimes
		else
			return number	
		end
	end
end
