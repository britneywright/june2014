require 'minitest/autorun'
require 'minitest/pride'

def stock_picker(stock_value)
  best_days = []
  stock_value.each do |buy|
    stock_value.each do |sell|
      profit = sell - buy
      if stock_value.find_index(sell) > stock_value.find_index(buy)
        best_days << [stock_value.index(buy), stock_value.index(sell), profit]
      end
    end
  end
  highest_profit = best_days.max_by{ |buy,sell, profit| profit }
  highest_profit.pop
  highest_profit
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