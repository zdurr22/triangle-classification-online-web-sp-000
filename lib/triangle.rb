class Triangle
  attr_accessor :type, :length_a, :length_b, :length_c

  def initialize(length_a, length_b, length_c)
    @length_a = length_a
    @length_b = length_b
    @length_c = length_c
  end

  def kind
    if length_a == length_b && length_a == length_c
      @type = :equilateral unless length_a == 0
    elsif length_a == length_b || length_b == length_c || length_a == length_c
      @type = :isosceles
    elsif length_a + length_b < length_c || length_b + length_c < length_a || length_a + length_c < length_b
      raise TriangleError
    elsif length_a == 0 || length_b == 0 || length_c == 0
      raise TriangleError
    else
      @type = :scalene
    end
  end




  class TriangleError < StandardError

  end
end
