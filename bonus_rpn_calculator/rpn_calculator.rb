class RPNCalculator
	attr_accessor :nums, :stack

	def initialize
		@nums = []
		@stack = []
	end

	def value
		@value = @stack[-1]
	end

	def push(num)
		@stack.push(num)
	end

	def plus
		if @stack.length < 1
			raise "calculator is empty"
		else
			num_two, num_one = @stack.pop, @stack.pop
			@stack << (num_one + num_two)
		end
	end

	def minus
		if @stack.length < 1
			raise "calculator is empty"
		else
			num_two, num_one = @stack.pop, @stack.pop
			@stack << (num_one - num_two)
		end
	end


	def times
		if @stack.length < 1
			raise "calculator is empty"
		else
			num_two, num_one = @stack.pop, @stack.pop
			@stack << (num_one * num_two)
		end
	end

	def divide
		if @stack.length < 1
			raise "calculator is empty"
		else
			num_two, num_one = @stack.pop.to_f, @stack.pop.to_f
			@stack << num_one / num_two
		end
	end

	def tokens(str)
		tokenized = str.split()


		tokenized.map! do |i|
			if /\d/ === i
				i.to_i
			else
				i.to_sym
			end				
		end
	end


	def evaluate(str)
		@value = 0.0
		tokenized_arr = tokens(str)

		tokenized_arr.each do |t|
			if t.class == 1.class
				@stack << t
			elsif t == :+
				self.plus
			elsif t == :-
				self.minus
			elsif t == :*
				self.times
			elsif t == :/
				self.divide
			else
				raise "Error: Bad Token #{t}"
			end
		end
		return self.value
	end



end