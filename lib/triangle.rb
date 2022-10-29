class Triangle
  attr_reader :kind

  def initialize(sideA,sideB,sideC)
    @sideA=sideA
    @sideB=sideB
    @sideC=sideC
  end

  def kind
    if ((@sideA > 0) && (@sideB > 0) && (@sideC > 0) && (((@sideA + @sideB) > @sideC) && ((@sideB + @sideC) > @sideA) && ((@sideC + @sideA) > @sideB)))
      if ((@sideA == @sideB) && (@sideB == @sideC) && (@sideC == @sideA))
        :equilateral
    elsif ((@sideA == @sideB) || (@sideB == @sideC) || (@sideA == @sideC))
        :isosceles
    else
        :scalene
    end
    else
      raise TriangleError
    end
  end
  class 
    TriangleError < StandardError
    def message
      puts "Invalid Entry"
    end
  end
end


eq= Triangle.new(2,2,2)

is= Triangle.new(2,2,1)
sc=Triangle.new(1,2,3)
