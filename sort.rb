require 'minitest/autorun'

def bubble_sort(arr)
  arr.each_index do |index|
    comparison = arr[index] <=> arr[index + 1]
    if comparison == 1
      a = arr[index]
      b = arr[index + 1]
      arr[index] = b
      arr[index + 1] = a
      bubble_sort(arr)
    end
  end
end

describe "sort an array of objects" do
  it "should sort number from smallest to largest" do
    bubble_sort([1, 2, 3]).must_equal [1, 2, 3]
  end  
  it "should sort number from smallest to largest" do
    bubble_sort([3, 2, 6, 12, 4, 9]).must_equal [2, 3, 4, 6, 9, 12]
  end
  it "should sort some stuff" do
    bubble_sort([2, 3, 6, 12, 4, 9]).must_equal [2, 3, 4, 6, 9, 12]
  end  
end