class Pub

  attr_accessor :till

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def pub_sell_drink (amount, drunkeness)
    if drunkeness < 10
      @till += amount
    end
  end

  def stock_count()
    total_value = 0
    for drink in @drinks
      p drink
      total_value += 1
    end
    return total_value
  end

end
