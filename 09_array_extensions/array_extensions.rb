class Array
	def sum 
		return 0 if self == []
		self.inject(:+)
	end

	def square
		return self if self == []
		self.map { |e| e ** 2 }
	end

	def square!
		return self if self == []		
		self.map! { |e| e ** 2 }
	end
end