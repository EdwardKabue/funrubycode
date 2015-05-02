class ACM
	def self.calculate(*args)
		if args.length!= 6
			return "Try again! Enter 6 values."
		end
		args.each
		a = args[0]
		m = args[1]
		p = args[2]
		q = args[3]
		r = args[4]
		s = args[5]
	end
end