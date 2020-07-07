class Customers::ItemsController < ApplicationController
	def index
		@items = Item.all
		@genres = ItemGenre.all
	end

	def show
		@item = Item.find(params[:id])
	    @genres = ItemGenre.all
		@cart_item = current_customer.cart_items.build
	end

	def genres										#最終的にはAjax化したい…
		@items = Item.where(item_genre_id: params[:genres_id])
	    @genre = ItemGenre.find(params[:genres_id])
		@genres = ItemGenre.all
	end
    
  private
    def item_params
      params.require(:item).permit(:image, :name, :description, :item_genre_id, :price, :is_active)
    end
end