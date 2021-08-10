require 'part1'

describe Part1 do
  describe "when detectiting palindrome" do
    it "should be a palindrome" do
      expect("teste".palindrome?).to eq(false)
    end

    it 'should be case-insensitive' do
      expect('redivider'.palindrome?).to eq(true)
    end

    it 'should be case-insensitive' do
      expect('ReDivider'.palindrome?).to eq(true)
    end

    it 'should ignore nonword characters' do
      expect('A man, a plan, a canal -- Panama'.palindrome?).to eq(true)
      expect("Madam, I'm Adam!".palindrome?).to eq(true)
    end

    it 'should work with numbers' do
      expect([1,2,3,2,1].palindrome?).to eq(true)
    end
  end
end

describe 'word count' do
  it 'should return a hash' do
    expect('now is the time'.count_words).to be_kind_of(Hash)
  end

  it 'works on simple strings' do
    expect('Doo bee doo bee doo'.count_words).to eq({'doo' => 3, 'bee' => 2})
  end

  it 'ignores punctuation' do
    result = {'man' => 1, 'plan' => 1, 'canal' => 1, 'a' => 3, 'panama' => 1}

    expect('A man, a plan, a canal -- Panama!'.count_words).to eq(result)
  end

  it 'works on the empty string' do
    expect(''.count_words).to eq({})
  end

  it 'ignores leading whitespace' do
    expect("  toucan".count_words).to eq({'toucan' => 1 })
  end

  it 'ignores embedded whitespace' do
    expect("four   four  \n four \t four!".count_words).to eq({'four' => 4})
  end
end