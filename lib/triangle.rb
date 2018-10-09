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

def kind 
  
  if self.valid?
    if @x1==@x2 && @x1==@x3
      :equilateral
    elsif @x1 == @x2 || @x2 == @x3 || @x1 == @x3
      :isosceles
    else
      :scalene
      
    end
    
  else
    
    begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    
  end
  
end




  class TriangleError < StandardError
        def message 
      "Not a triangle. "
    end
  end

end
