#Calculating the perimeter and area of a rectangle
class Rectangle

	def initialize(length,breadth)
	  @length = length
	  @breadth = breadth
	end

	def perimeter
	  2*(@length + @breadth)
	end   

	def area
		@length * @breadth
	end
end 