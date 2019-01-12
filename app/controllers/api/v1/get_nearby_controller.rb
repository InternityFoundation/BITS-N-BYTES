class Api::V1::GetNearbyController < ApplicationController
    before_action :get_current_location

    def get_locations
        @feedback = Feedback.all
        puts(@current_location)
        render json: @feedback
    end

    def get_feedbacks
        
    end

    private
    def get_current_location
        @current_location = [params[:latitude].to_f, params[:longitude].to_f]
    end
end
