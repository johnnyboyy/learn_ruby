class RPNCalculator
	attr_accessor :nums, :stack

	def initialize
		@nums = []
		@stack = []
	end

	def value
		@value = @stack.pop
	end

	def push(num)
		@stack.push(num)
	end

	def plus
		if @stack.length < 1
			raise "calculator is empty"
		elsif @stack.length == 1
			p @stack
			num = @stack.pop
			@value += num
		else
			num_two, num_one = @stack.pop, @stack.pop
			@stack << (num_one + num_two)
		end
	end

end