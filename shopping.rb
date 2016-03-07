
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
	def add_item(item)
		@items.push(item)
	end
	#Function to calculate the total price
	def cart_price
	#There is no shipping cost or base cost
		cart_price = @shipping_costs
		@items.each do |item|
		cart_price =+ item.price
		end
		cart_price
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
	attr_reader :name, :price
	def initialize(name, price)
		@name = name
		@price = price
	end

	def price
		price = Item.price
	end


end


#Create the subcategories for the items that have special properties: fruits and warehouse


#We define for this subcategories a method to define the discount for the item.
class Houseware < Item
    attr_reader :name, :price
	def discount
		if price >= 100
			discount = 0,05
			price = price X (1 - discount)
		else
			price = price
		end
	end
end




class Fruit < Item
	attr_reader :name, :price
	def discount
	session_date = Time.new
	session_date.wday
		if session_date.wday == 0 || session_date.wday == 6
			discount = 0,1
			price = price * (1 - discount)
		else
			price = price	
		end 
	end
end



#Items stock in the shopp:


banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)


#Generate shopping carts:

mario_cart = Shoppingcart.new
mario_cart.add_item(banana)
mario_cart.add_item(vacuum_cleaner)
mario_cart.add_item(anchovies)

puts "The final price of your shopping cart is #{mario_cart.cart_price}"









