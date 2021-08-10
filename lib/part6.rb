class Numeric
  @@currencies = {'dollar'=> 1, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}

  def method_missing(method_id)
    singular_currency = method_id.to_s.chomp('s')

    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

	def in(new_currency)
		currency = new_currency.to_s.chomp('s')

		if @@currencies.has_key?(currency)
			self * (1 / @@currencies[currency])
		else
			self
		end
	end
end

class String
	def palindrome?
		p = self.downcase.gsub( /\W/x , "")
		p == p.reverse
	end
end

module Enumerable
	def palindrome?
		palindromecheck = self
		palindromecheck == palindromecheck.reverse
	end
end