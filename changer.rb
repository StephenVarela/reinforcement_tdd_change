require 'pry'
class Changer

  def self.make_change(input)
    #denominations = 25, 10, 5, 1
    value = input
    final_return_array = []
    denominations = [25,10,5,1]

    denominations.each do |denomination|
      return_array = []
      iteration = create_denominations(value, denomination)
      value = iteration[0]
      return_array = iteration[1]
      return_array.each do |coin|
        final_return_array << coin
      end

    end

    return final_return_array
  end
end

  def create_denominations(value, denomination)
    return_array = []
    while value >= denomination
      value -= denomination
      return_array << denomination
    end
    return value, return_array
  end
