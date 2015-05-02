class Palindrome
	def self.is_palindrome(x)
		if x.to_s==x.to_s.reverse
			return true
		else
			return false
		end		
	end

	def self.getLargestPalindromeProduct
		i, j = 100, 100
		greatestPdmProduct, test = 0, 0
		palindromeList = []

		while i.to_s.length == 3
			while j.to_s.length == 3
				test = i*j
				if is_palindrome(test)
					palindromeList << test
				end	
				j = j+1
			end
			j = 100
			i = i+1		
		end
		palindromeList.each { |palindrome|
			if palindrome > greatestPdmProduct
				greatestPdmProduct = palindrome
			end
		}
		return greatestPdmProduct
	end

	def self.getFactors
		factorCount = 999
		
		while factorCount.to_s.length == 3
			break if getLargestPalindromeProduct%factorCount == 0
			factorCount = factorCount - 1	
		end
		puts "The factors are #{getLargestPalindromeProduct/factorCount} and #{factorCount}"
	end
end