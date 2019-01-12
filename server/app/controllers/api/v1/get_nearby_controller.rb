class Api::V1::GetNearbyController < ApplicationController
    before_action :get_current_location
    
    def get_locations
        puts(@current_location)
    end

    def get_feedbacks
    end

    private
    def get_current_location
        @current_location = [params[:latitude], params[:longitude]]
    end
end
