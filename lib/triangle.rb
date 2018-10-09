class Triangle
attr_accessor :x1, :x2 , :x3 , :equilateral , :isosceles , :scalene

def initialize (x1, x2, x3)
  @x1 = x1
  @x2 = x2
  @x3 = x3
  
end

def valid?
  @x1 + @x2 > @x3 && @x2 + @x3 > @x1 && @x1 + @x3 > @x2
end


  class TriangleError < StandardError
    # triangle error code
  end

end
