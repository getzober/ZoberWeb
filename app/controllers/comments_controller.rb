class CommentsController < ApplicationController
  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.create(params[:comment].permit( :body))
@comment.user_id = current_user.id
    if @comment.save
      flash[:notice] = 'Comment was successfully created.'
    redirect_to blog_path(@blog)
  else
    flash[:notice] = "Error creating comment: #{@comment.errors}"
end
  end
  def destroy
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.find(params[:id])
    @comment.destroy
    redirect_to blog_path(@blog)
  end
end
