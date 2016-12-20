class Triangle
  attr_accessor :sides

  def initialize(a, b, c)
      @sides = [a,b,c].sort
    end

  def kind
    if sides[0] <= 0 || sides[0] + sides[1] <= sides[2]
      begin
        raise TriangleError
        rescue TriangleError => error
        puts error.message
    end
    else
      return :equilateral if sides[0] == sides[2]
      return :isosceles if sides[0] == sides[1] or sides[1] == sides[2]
      return :scalene
    end
  end

end

class TriangleError < StandardError
  def message
    "Custom Triangle Error!"
  end
end

# class Triangle
#   attr_accessor :side_1, :side_2, :side_3
#
#   def initialize(side_1, side_2, side_3)
#     @side_1 = side_1
#     @side_2 = side_2
#     @side_3 = side_3
#
#   end
#
#   def kind
#     sides = [side_1, side_2, side_3].uniq
#     x = [side_1, side_2, side_3].sort
#     if x[0] <= 0 || x[0] + x[1] <= x[2]
#       begin
#         raise TriangleError
#       rescue TriangleError => error
#         puts error.message
#     end
#     else
#       type = case sides.length
#         when 1 then :equilateral
#         when 2 then :isosceles
#         when 3 then :scalene
#       end
#     end
#   end
#
#   class TriangleError < StandardError
#   def message
#     "Custom Triangle Error!"
#   end
# end
#
# end

# 1. `:equilateral`
#
# 2. `:isosceles`
#
# 3. `:scalene`
#
# def kind
#   if side_1 == side_2 && side_2 == side_3
#     :equilateral
#   elsif side_1 == side_2 && (side_1 || side_2) != side_3
#     :isosceles
#   :scalene
#
# end
