class CommentsController < ApplicationController
  before_action :check_autor, only: [:destroy, :edit]

  def check_autor

    @find = Comment.find(params[:id])

    if user_signed_in?

      if @find.user_id == current_user.id
        true
      else
        redirect_to :root, alert: "Ce commentaire ne vous appartient pas"
      end
    else
      redirect_to :root, alert: "Vous devez vous connecter"
    end
    
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment_id])
    @comment.user_id = params[:comment][:user_id]
    @comment.text = params[:comment][:text]
    @comment.save

    redirect_to @post
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to @comment.post
  end
end
