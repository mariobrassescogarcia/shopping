

#Create the shopping cart class with these functions:
	#Construct a new shopping cart
	#Add new item
	#Get total price of the shopping cart


class Shoppingcart
	
	#Construct a new shopping cart
	def initialize
		@items = []
		@shipping_costs = 0
	end
	#Function to add items
	def add_item
		@items.push(item)
	end
	#Function to calculate the total price
	def cart_price
	#There is no shipping cost or base cost
		cart_price = @shipping_costs
		@items.each do |item|
		cart_price =+ item.price
		end
	end

end


class Item
	def initialize(name, price)
		@name = name
		@price = price
	end
	def price



	end
End