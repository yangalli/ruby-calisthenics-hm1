require 'part3'

describe Anagrams do
  describe 'anagram grouping' do
    describe 'sanity checks' do
      it 'should work on the empty string [5 points]' do
        expect(Anagrams.combine_anagrams([''])).to eq([['']])
      end

      it 'should return an array of arrays for nonempty string [5 points]' do
        expect(Anagrams.combine_anagrams(['x'])).to eq([['x']])
      end
    end

    it 'for "scream cars for four scar creams" [10 points]' do
      anagrams = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']

      expect(Anagrams.combine_anagrams(anagrams)).to eq([["cars", "racs", "scar"], ["for"], ["potatoes"], ["four"], ["creams", "scream"]])
    end
  end
end