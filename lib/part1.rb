module Part1
  def palindrome?
    str = self
    str = str.downcase.gsub(/[^a-z]*\s*\d*/, "")
    str == str.reverse
  end

  def count_words
    wordhash = Hash.new
    str = self

    str.downcase.scan(/\b\w*\b/) do |word|
      if wordhash.has_key?(word)
        wordhash[word] += 1
      elsif word == ""
      else wordhash[word] = 1
      end
    end

    return wordhash
  end
end

class String
  include Part1
end