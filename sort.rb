require 'minitest/autorun'

def handmade_sort(arr)
  arr.collect! do |number|
    result = number <=> arr.at(arr.index(number).next)
    if result == 1 || result == 0
      arr.at(arr.index(number).next)
    else
      number
    end
  end
  print arr
end

describe "sort an array of objects" do
  it "should sort number from smallest to largest" do
    handmade_sort([3, 2, 6, 12, 4, 9]).must_equal [2, 3, 4, 6, 9, 12]
  end
end