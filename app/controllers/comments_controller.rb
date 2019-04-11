class CommentsController < ApplicationController
def create
    @event = Event.find(params[:event_id])
    @comment = @event.comments.create(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
        redirect_to event_path(@event), notice: "Thanks for Comment"
    else
        render 'comments/form'
    end
    # redirect_to event_path(@event)
  end
# end
def create
    @venue = Venue.find(params[:venue_id])
    @comment = @venue.comments.create(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
        redirect_to venue_path(@venue), notice: "Thanks for Comment"
    else
        render 'comments/form'
    end
    # redirect_to event_path(@event)
  end

  #   def create
  #   comment = event.comments.create(comment_params.merge(user_id: current_user.id))
  #   respond_with event, comment
  # end
#   def create
#   @event = Event.find(params[:event_id])
#   @comment = @event.comments.create(comment_params)
#   @comment.user_id = current_user.id #or whatever is you session name
#   if @comment.save
#     redirect_to @event
#   else
#     flash.now[:danger] = "error"
#   end
# end
# @comment.user = current_user


  def destroy
    @event = Event.find(params[:event_id])
    @comment = @event.comments.find(params[:id])
    @comment.destroy
    redirect_to event_path(@event)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:user_id, :username, :body)
    end
end
