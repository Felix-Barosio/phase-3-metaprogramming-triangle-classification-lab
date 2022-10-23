require 'pry'

class Triangle
  # write code here

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if is_triangle?
      sides = [side1, side2, side3]
      if sides.uniq.length == 1
        :equilateral
      elsif sides.uniq.length == 2
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end


  class TriangleError < StandardError
    def message
      'Thas is Invalid!'
    end
  end

  private

  def is_triangle?
    all_sides = [side1, side2, side3].sort
    sorted = all_sides.pop
    sorted < all_sides.sum
  end

end

# binding.pry
