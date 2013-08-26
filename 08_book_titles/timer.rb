class Timer
attr_accessor :timer 
attr_accessor :seconds 
attr_accessor :minutes 
attr_accessor :hours 

	def initialize
		@seconds = 0
		@minutes = 0
		@hours = 0
	end

	def padding(d)
		if /(^\d$)/.match(d)
			d = "0#{d}"
		else
			d = "#{d}"
		end

	end

	def math(a , b) 
		b = a / 60
		a = a % 60
	end

	def time_string
		if @seconds >= 60
#			math(@seconds, @minutes)
			@minutes = @seconds  / 60
			@seconds = @seconds % 60
		end
		if @minutes >= 60
#			math(@minutes, @hours)
			@hours = @minutes / 60
			@minutes = @minutes % 60
		end
		time_array = [@hours, @minutes, @seconds]
		@timer = time_array.map{ |d| padding(d.to_s) }.join(":")
	end

end



