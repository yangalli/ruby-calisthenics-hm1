class Anagrams
  def self.combine_anagrams(words)
    anagram_array = []

    words.map do |current_word|
      temp_array = []

      words.map do |next_word|
        if anagram(current_word, next_word)
          temp_array.push(next_word)
        end
      end

      anagram_array.push(temp_array)
    end

    return anagram_array.uniq
  end

  def self.anagram(word1, word2)
    word1.chars.sort_by(&:downcase).join == word2.chars.sort_by(&:downcase).join
  end
end


# anagramarray = Array.new

# words.each do |aword|
#   temp = []
#   words.each do |nextword|
#     if (aword.downcase.split(//).sort == nextword.downcase.split(//).sort)
#       temp.push(nextword)
#     end
#   end
#   anagramarray.push(temp)
# end

# return anagramarray.uniq

# puts combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'] )

