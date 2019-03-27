require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../food.rb')

class CustomerTest < MiniTest::Test

  def setup

    @stock = {
      "Drink1" => Drink.new("Duff Beer", 2, 1),
      "Drink2" => Drink.new("Miller", 2, 2),
      "Drink3" => Drink.new("Guiness", 4, 4),
      "Drink4" => Drink.new("Corona", 3, 2)
    }

    @pub = Pub.new("Queen Vic", 1000, @stock)
    @customer = Customer.new("Jimbob", 25, 100, 0)
    @food1 = Food.new("Mars Bar", 1, 1)
  end

  def test_can_buy_drink
    @customer.customer_buy_drink(@stock["Drink1"].price, @stock["Drink1"].alcohol_level)
    @pub.pub_sell_drink(@stock["Drink1"].price, @customer.drunkeness)
    assert_equal(1002 , @pub.till)
    assert_equal(98, @customer.wallet)
    assert_equal(1, @customer.drunkeness)
  end

  def test_can_buy_food
    @customer.customer_buy_food(@food1.price, @food1.rejuvenation_level)
    assert_equal(99, @customer.wallet)
    assert_equal(-1, @customer.drunkeness)
  end

  def test_stock_count()
    assert_equal(4, @pub.stock_count())
  end

end
