require 'Pry'

class Series
  attr_reader :series

  def initialize(series)
    @series = series.chars.map { |num| num.to_i }
  end

  def slices(number)
    raise ArgumentError if number > series.size

    new_array = []
    idx = 0
    series.size.times do
      if series.slice(idx, number).size < number
        break
      else
        new_array << series.slice(idx, number)
        idx += 1
      end
    end
    new_array
  end
end
