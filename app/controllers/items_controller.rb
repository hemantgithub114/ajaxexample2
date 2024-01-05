class ItemsController < ApplicationController

	  def index
	    @items = Item.all
	    @item = Item.new
	  end

	  def create
	    @item = Item.new(item_params)

	    if @item.save
	      respond_to do |format|
	         format.html { redirect_to root_path }
	         format.js
	      end
	    else
	      render 'index'
	    end
	  end

	 

	  private

	  def item_params
	    params.require(:item).permit(:name)
	  end
end
