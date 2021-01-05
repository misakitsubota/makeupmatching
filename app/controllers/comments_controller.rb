class CommentsController < ApplicationController

  # def index
  #   @comments = Comment.order("created_at DESC")
  # end

  # def new 
  #   @comment = Comment.find(comment_params)
  #   @item = Item.find(params[:id])
  #   @comment = Comment.new
  # end

  def create
    # binding.pry
    @item = Item.find(params[:item_id])
    comment = Comment.create(comment_params)
    # comment = Comment.create(comment_params)
    # redirect_to "/items/#{comment.item.id}"
    if comment.save
      redirect_to item_path(@item)
    else 
      flash.now[:alert] = 'コメントを入力してください'
    end
  end

  # def show
  #   @comment = Comment.find(params[:id])
  # end

  private
  def comment_params
    params.require(:comment).permit(:image, :reccomend_item_name, :description, :cost, :brand_id, :category_id).merge(user_id: current_user.id, item_id: params[:item_id])
  end
end
