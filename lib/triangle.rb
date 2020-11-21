class Triangle
  attr_accessor :type

  def initialize(length_a, length_b, length_c)
    if length_a == length_b || length_b == length_c || length_a == length_c
      @type = :isosceles
    elsif length_a == length_b && length_a == length_c
      @type = :equilateral
    elsif length_a + length_b < length_c || length_b + length_c < length_a || length_a + length_c < length_b
      raise TriangleError
    else
      @type = :scalene
    end
  end
  # write code here



  class TriangleError < StandardError

  end
end
