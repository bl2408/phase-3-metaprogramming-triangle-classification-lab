class Triangle
  # write code here
  attr_reader :a, :b, :c

  def initialize a, b, c
    @a = a
    @b = b
    @c = c
  end

  def kind

    validate

    if a == b && b == c
      :equilateral
    elsif a == b || b==c || a == c
      :isosceles
    else
      :scalene
    end

  end

  class TriangleError < StandardError
  end

  private

  def validate
    [a,b,c].each do |i| 
      if i < 0
        raise TriangleError
      end
    end
    raise TriangleError unless a + b > c && a + c > b && b + c > a
  end
end


