class LocationController < ApplicationController
    before_action :set_location, only: [:set_location]

    def index
        @feedback = Feedback.new()
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
        params.require(:feedback).permit(:lighting, :crowd, :sanitation, :content, :latitude, :longitude)
    end
end
