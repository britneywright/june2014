require 'minitest/autorun'
require 'minitest/pride'

def stock_picker(stock_value)
  buy_and_sell = []
  profit = 0
  stock_value.each do |buy|
    stock_value.each do |sell|
      if stock_value.index(sell) > stock_value.index(buy)
        if (sell - buy) > profit
          profit = sell - buy
          buy_and_sell = [stock_value.index(buy), stock_value.index(sell)]
        end  
      end 
    end
  end
  buy_and_sell
end

describe "given a number of days with different stock values return the best day to buy and the best day to sell" do
  it "should display the second day and the fifth day" do
    stock_picker([20, 4, 5, 7, 12]).must_equal [1, 4]
  end
  it "should display the first day and the second day" do
    stock_picker([3, 30, 5, 7, 12]).must_equal [0, 1]
  end
  it "should display the first day and the fourth day" do
    stock_picker([2, 4, 5, 7, 1]).must_equal [0, 3]
  end    
end