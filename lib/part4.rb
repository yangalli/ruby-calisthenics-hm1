class Dessert
  attr_accessor :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    return true if calories < 200

    false
  end

  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor, :name, :calories

  def initialize(name = "jelly bean", calories = 5, flavor)
    @name = flavor + " jelly bean"
    @calories = calories
    @flavor = flavor
  end

  def delicious?
    if flavor === "black licorice"
      return false
    end

    true
  end
end