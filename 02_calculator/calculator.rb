def add(n1, n2)
	n1 + n2
end

def subtract(n1, n2)
	n1 - n2
end

def sum (arr)
	return 0 if arr == []
	arr.inject(:+)
end