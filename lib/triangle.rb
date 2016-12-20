class Triangle
  attr_accessor :sides

  def initialize(a, b, c)
      @sides = [a,b,c].sort
    end

  def kind
    raise TriangleError if sides[0] <= 0 || sides[0] + sides[1] <= sides[2]
      return :equilateral if sides[0] == sides[2]
      return :isosceles if sides[0] == sides[1] or sides[1] == sides[2]
      return :scalene
  end

end

class TriangleError < StandardError
end
