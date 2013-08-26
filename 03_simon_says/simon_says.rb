def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, amt = 2)
	to_join = []
	amt.times do 
		to_join << str
	end
	to_join.join(" ")
end

def start_of_word(str, amt_of_chars)
	str[0..(amt_of_chars - 1)]
end

def first_word(str)
	str.split(" ").first
end

def titleize(title)
	if title.include?(' ')
		string_array = title.split(' ')
		string_array[0].capitalize!
		string_array[1..-1].each do |w|
			case w
			when "and", "the", "a", "over"
				w.downcase!
			else
				w.capitalize!
			end
		end
		string_array.join(' ')
	else
		title.capitalize
	end
end