module Enumerable

  def my_each
    for num in self
      print self[num]
    end
  end

  def my_each_with_index
  end

  def my_select
    result_array = []
    for num in self
      result_array << self[num]
    end
    return result_array
  end

  def my_all?
  end

  def my_any?
  end

  def my_none?
  end

  def my_count
  end

  def my_map
  end

  def my_inject
  end
end

def multiply_els(arr)
end

print [1,2,3].my_each