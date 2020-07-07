class Customers::OrdersController < ApplicationController
	def index
		
	end

	def show
		
	end

	def new
		@order = current_customer.orders.new
	end

	def confirm_new
		@cart_items = current_customer.cart_items

		@total_item_price = @cart_items.sum{ |c| c.item.price * c.count }
		# @totle_item_price = @cart_items.sum do |c|
		# 	c.item.price * c.item.count
		# end
	end

	def finish
	end

end
