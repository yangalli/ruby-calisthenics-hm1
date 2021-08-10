require 'part6'

describe "when testing currency converter" do
  it "should change to euros" do
    expect(5.dollars.in(:euros)).to eq(3.869969040247678)
  end

  it 'should change to rupees' do
    expect(10.euros.in(:rupees)).to eq(680.0)
  end

  it 'should change to dolar' do
    expect(10.euro.in(:dolars)).to eq(12.92)
  end
end

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