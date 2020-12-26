class ItemsController < ApplicationController
  def index
    @items = Item.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else 
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :item_name, :cost, :brand_id, :category_id)
  end

end
