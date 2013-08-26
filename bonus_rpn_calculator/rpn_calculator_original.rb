class RPNCalculator
	attr_accessor :nums, :value

	def initialize
		@nums = []
		@value = 0.0
	end



	def evaluate(str)
		@value = 0.0
		tokenized_arr = tokens(str)

		tokenized_arr.each do |t|
			if t.class == 1.class
				@nums << t
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
		return @value
	end





	def push(num)
		@nums.push(num)
	end

	def plus
		if @nums.length < 1
			raise "calculator is empty"
		elsif @nums.length == 1
			num = @nums.pop
			@value += num
		else
			num_two, num_one = @nums.pop, @nums.pop
			@value = @value + num_one + num_two
		end
	end

	def minus
		if @nums.length < 1
			raise "calculator is empty"
		else
			num_two, num_one = @nums.pop, @nums.pop
			if num_one == nil
				@value -= num_two
			else 
				@value = num_one - num_two
			end
		end
	end

	def times
		if @nums.length < 1
			raise "calculator is empty"
		else
			num_two, num_one = @nums.pop, @nums.pop
			if num_one == nil
				@value *= num_two
			else
				@value = num_one * num_two
			end
		end
	end

	def divide
		p " @nums = #{@nums}, @to_op = #{@to_op}, @value = #{@value}"
		if @nums.length < 1
			raise "calculator is empty"
		else
			num_two, num_one = @nums.pop.to_f, @nums.pop.to_f
			if num_one == nil
				@value /= num_two
			else
				@value = num_one / num_two
			end
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
end