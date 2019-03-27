class Customer

  attr_accessor :age, :wallet, :drunkeness

  def initialize(name, age, wallet, drunkeness)
    @name = name
    @age = age
    @wallet = wallet
    @drunkeness =  drunkeness
  end

  def customer_buy_drink(amount, alcohol_level)
     @wallet -= amount
     @drunkeness += alcohol_level
  end

  def customer_buy_food(cost, rejuvenation_level)
    @wallet -= cost
    @drunkeness -= rejuvenation_level
  end
end
