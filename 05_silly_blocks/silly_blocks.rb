def reverse_words(phrase)
 # return '' if phrase.nil?
 # words = phrase.split
  phrase.split.map{|phrase| phrase.reverse!}.join(' ')
end

def add_num(n, a = 1)
	n + a
end

def reverser
  reverse_words(yield)
end

def adder(n = 1)
	add_num(yield, n)
end

def repeater(n = 1, &code)
	n.times &code
end