class LocationController < ApplicationController
  def index
    @feedback = current_user.feedbacks.build()
    @spots = Feedback.all
  end

  def create_feedback
    @feedback = current_user.feedbacks.build(set_params)
    sanitation = @feedback.sanitation.to_i
    crowd = @feedback.crowd.to_i
    lighting = @feedback.lighting.to_i

    feed = (sanitation+crowd+lighting)/3
    feed = feed.round

    @feedback.feed = feed
    if @feedback.save
      redirect_to root_path
    end
  end

  private
  def set_params
    params.require(:feedback).permit(:lighting, :crowd, :sanitation, :latitude, :longitude)
  end
end
