class CommentsController < ApplicationController
  
  	def index
@comments=Comment.new
@replies=Replies.new
end

  def create
  @comment =Comment.new(params[:commenter])
 

  if @comment.save
    redirect_to comments_path
  else
    render 'comments/index'
  end
end
end



