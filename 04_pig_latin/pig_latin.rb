require "Pig_Latin_mod.rb"

def translate(string)
  str_array = []

  if string.include?(" ")
    a = string.split(" ")
    a.each do |w|      
      str_array = str_array << Pig_Latin.trans(w)
    end
    return str_array.join(" ") 
  else
    Pig_Latin.trans(string)
  end
end