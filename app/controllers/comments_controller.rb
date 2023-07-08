class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @person = Person.find(params[:person_id])
    @comment = @person.comments.create(comment_params)
    redirect_to person_path(@person)
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
