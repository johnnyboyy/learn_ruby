def ftoc(f)
  convert = (5.0 / 9.0)

  c = 0
  	if f < 32 ||  f > 32
  		c = (f-32.0) * convert
  	elsif f == 32
  		c = 0
  	else
  		puts "error c = #{c}, f = #{f}"
  	end 		
  return c
end

def ctof(c)
  convert = (9.0 / 5.0)

  f = 32
  	if c > 0
  		f = f + (c * convert)
  	elsif c < 0
  		f = f - (c * convert)
  	elsif c == 0
  		f = 32
  		return f
  	else
  		puts "error c = #{c}, f = #{f}"
  	end 		
  return f
end