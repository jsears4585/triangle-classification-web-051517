class Triangle
  def initialize len_1, len_2, len_3
    @len_1 = len_1
    @len_2 = len_2
    @len_3 = len_3
  end

  def kind
    if  @len_1 == 0 && @len_2 == 0 && @len_3 == 0 ||
        @len_1 < 0 || @len_2 < 0 || @len_3 < 0 ||
        @len_1 + @len_2 <= @len_3 ||
        @len_2 + @len_3 <= @len_1 ||
        @len_3 + @len_1 <= @len_2
          raise TriangleError
    else
      if @len_1 == @len_2 && @len_2 == @len_3
        :equilateral
      elsif @len_1 == @len_2 || @len_2 == @len_3 || @len_3 == @len_1
        :isosceles
      else
        :scalene
      end
    end
  end
end

class TriangleError < StandardError
  def message
    raise "Your triangle isn't valid!"
  end
end
