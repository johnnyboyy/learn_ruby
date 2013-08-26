module Pig_Latin
  def self.trans(word)
    alpha = ('a'..'z').to_a
    vowels = ['a', 'e', 'i', 'o', 'u',]
    consonants = alpha - vowels
    ans = ""
    if vowels.include?(word[0])
        ans = word + 'ay'
    elsif word[0..1] == "qu"
      ans = word[2..-1]+"quay"
    elsif /\D+qu/ === word[0..2]
#    elsif word[0..2] == "squ"
      a = word.split("qu")
      ans = a[1] + a[0] + "quay"

      return ans
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      ans = word[3..-1] + word[0..2] + 'ay'
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      ans = word[2..-1] + word[0..1] + 'ay'
    else consonants.include?(word[0])
      ans = word[1..-1] + word[0] + 'ay'
    end    
  return ans
  end
end