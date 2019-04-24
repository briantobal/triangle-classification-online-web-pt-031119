class Triangle
  attr_accessor :equilateral, :isosceles, :scalene 
  
  def initialize(s1, s2, s3)   
    @s1 = s1 
    @s2 = s2 
    @s3 = s3 
  end     #def 
  
  def kind  
    if (@s1*@s2*@s3 = 0) || (@s1 + @s2) <= @s3 || (@s2 + @s3) <= @s1 || (@s3 + @s1) <= @s2 
     
     begin  
      raise TriangleError
      puts error.message
    end 
    
    elsif @s1 == @s2 && @s1 == @s3
      self.kind = :equilateral
  
    elsif s1 == s2 || s1 == s3 || s2 == s3
      self.kind = :isosceles
    
    end 
  end     #def 
  
  class TriangleError < StandardError
  end 

end
