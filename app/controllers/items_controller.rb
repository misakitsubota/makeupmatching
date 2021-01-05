class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :search_item, only: [:index, :search]

  def index
    @items = Item.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    # binding.pry
    @item = Item.new(item_params)
    if @item.valid? 
      @item.save
      redirect_to root_path
    else 
      render :new
    end
  end

  def show
    # binding.pry
    @item = Item.find(params[:id])
    # binding.pry
    @comment = Comment.new
    @comments = @item.comments.includes(:user)
  end

  def search
    @results = @p.result
  end

  private

  def item_params
    params.require(:item).permit(:image, :item_name, :cost, :brand_id, :category_id).merge(user_id: current_user.id)
  end

  def search_item
    @p = Item.ransack(params[:q])
  end

end
