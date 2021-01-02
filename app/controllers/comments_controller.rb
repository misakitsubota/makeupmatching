class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    redirect_to "/items/#{comment.item.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:image, :reccomend_item_name, :description :cost, :brand_id, :category_id).merge(user_id: current_user.id, item_id: params[:item_id])
  end
end
