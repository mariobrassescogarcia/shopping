
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


#Create the item class with these functions:
	#Construct a new item category
	#Get the final price of the item (depending on the category)


#Rules for the items:
	#By default, items will have no discount
	#Fruits have no discount during weekdays but on weekends they have a 10% discount
	#Housewares have no discount unless their unit price is more than 100€. In that case they have a 5% discount.





class Item
	def initialize(name, price, discount)
		@name = name
		@price = price
		@discount = 0
	end
	def price



	end
end


#Create the subcategories for the items that have special properties: fruits and warehouse


class Houseware < Item
	def price
	end
end




class Fruit < Item
	def price
	session_date = Time.new
	session_date.wday
	if session_date.wday == 0 || session_date.wday == 6
		@discount = 0,05
	else
		@discount = 0
	 	
	end 


	end
end






