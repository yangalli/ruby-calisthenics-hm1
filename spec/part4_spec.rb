require 'part4'

describe Dessert do
  describe 'cake' do
    before :each do
      @subject = Dessert.new('cake', 400)
    end

    it 'should have 400 calories [10 points]' do
      expect(@subject.calories).to eq(400)
    end

    it 'should be named cake [10 points]' do
      expect(@subject.name).to eq("cake")
    end

    it 'should be delicious [10 points]' do
      expect(@subject.delicious?).to eq(true)
    end

    it 'should not be healthy [10 points]' do
      expect(@subject.healthy?).not_to eq(true)
    end
  end


  describe 'can set' do
    before(:each) { @dessert = Dessert.new('xxx', 0) }

    it 'should set the calories [10 points]' do
      @dessert.calories = 80

      expect(@dessert.calories).to eq(80)
    end

    it 'should set the name [10 points]' do
      @dessert.name = 'ice cream'

      expect(@dessert.name).to eq('ice cream')
    end
  end
end

describe JellyBean do
  describe 'when non-licorice' do
    before :each do
      @dessert = JellyBean.new(flavor = 'vanilla')
    end

    it 'should contain 5 calories [5 points]' do
      expect(@dessert.calories).to eq(5)
    end

    it 'should be named vanilla jelly bean [5 points]' do
      expect(@dessert.name).to eq('vanilla jelly bean')
    end

    it 'should be delicious [5 points]' do
      expect(@dessert.delicious?).to eq(true)
    end
  end

  describe 'when licorice' do
    before :each do
      @subject = JellyBean.new(flavor = "black licorice")
    end

    it 'should not be delicious [5 points]' do
      expect(@subject.delicious?).to eq(false)
    end
  end
end