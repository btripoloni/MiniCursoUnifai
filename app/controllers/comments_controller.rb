class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comments_params)
    notice = nil
    if @comment.save
      notice = "Comentario Criado com sucesso!"
    else
      notice = "Comentario não pode ser criado!"
    end
    redirect_to post_path(@comment.post_id), notice: notice
  end

  def delete
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@comment.post_id)
  end

  private
  def comments_params
    params.require(:comment).permit(:email, :body, :post_id)
  end
end
