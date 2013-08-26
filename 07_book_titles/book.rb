class Book
	attr_accessor :title

	def title
		if @title.include?(' ')
			string_array = @title.split(' ')
			string_array[0].capitalize!
			string_array[1..-1].each do |w|
				case w
				when "and", "the", "a", "over", "of", "in", "an"
					w.downcase!
				else
					w.capitalize!
				end
			end
			string_array.join(' ')
		else
			@title.capitalize
		end
	end
end