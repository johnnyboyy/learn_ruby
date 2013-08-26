require 'temperature_mod'

class Temperature
	def initialize(hash)
		@temperature = Hash.new
		hash.each do |unit, value|
			@temperature[unit] = value
		end

		if @temperature.include?(:f)
			@temperature[:c] = Temp_Con.ftoc(@temperature[:f])
		elsif @temperature.include?(:c)
			@temperature[:f] = Temp_Con.ctof(@temperature[:c])
		end

	end

	def self.in_fahrenheit(f)
		Temperature.new(:f => f)	
	end

	def self.in_celsius(c)
		Temperature.new(:c => c)
	end

	def to_fahrenheit
		if @temperature.include?(:f)
			@temperature[:f]
		else
			@temperature[:f] = Temp_Con.ctof(@temperature[:c])
		end
	end


	def to_celsius
		if @temperature.include?(:c)
			@temperature[:c]
		else
			@temperature[:c] = Temp_Con.ftoc(@temperature[:f])
		end
	end

end




class Celsius < Temperature
		def initialize(c)
			@temperature = Hash.new
			@temperature[:c] = c
		end
end





class Fahrenheit < Temperature
		def initialize(f)
			@temperature = Hash.new
			@temperature[:f] = f
		end
end