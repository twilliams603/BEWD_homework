
class Person

	def name=(value) # setter method
		# methods that end with a '=' sign get special handling. you can add a space before the '=' 
		@name = value
	end

	def name() # getter method
		return @name 
	end

end


class Person

	attr_accesor :name # creates setter and getter method as shown above

end

