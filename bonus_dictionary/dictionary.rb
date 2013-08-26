class Dictionary
	attr_accessor :entries, :keywords, :values

	def initialize
		@entries = {}
		@keywords = []
		@values = []
	end

	def keywords
		@entries.keys.sort
	end

	def add(var, expl = nil)
		##var is a hash
		if var.class == Hash
			var.each do |key, value|
				@entries[key] = value
				@keywords << key
				@values << value
			end
		else
			#var is a key
			@entries[var] = expl
			@keywords << var
			@values << expl
		end
	end

	def include?(word)
		@entries.include?(word)
	end

	def find(query)
    	@entries.select { |word, definition| word.scan(query).join == query}
	end

	def printable

		in_one_string =[]
		keys = []
		values = []
		@entries.each do |key, value|
			keys << key
			values << value
		end
		(keys.length - 1).times do 
			in_one_string << "[#{keys.pop}]" + %Q{ "#{values.pop}"\n}
		end
		in_one_string << "[#{keys.pop}]" + %Q{ "#{values.pop}"}
		in_one_string.join('')
	end

end
