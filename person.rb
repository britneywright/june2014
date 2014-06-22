class Person

  def initialize(name)
    @name = name
    @anxiety_level = anxiety_level
  end

  def anxiety_level
    @level = rand(1..10)
    if @level > 8
      return too_high
    elsif @level == 5
      return so_so
    else
      return low
    end
  end

  def too_high
    "#{@name}'s anxiety level is at #{@level} today. Watch out!"
  end  

  def so_so
    "#{@name} isn't doing too bad today."
  end

  def low
    "#{@name} is doing better than usual. Time for cake!"
  end

  private
  def person_params
    params.permit(:name, :anxiety_level)
  end
end

  class Crazy < Person

    def low
      "#{@name} is still cray-cray."
    end
  end

britney = Crazy.new("Britney")
puts britney.anxiety_level