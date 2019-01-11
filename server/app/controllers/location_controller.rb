class LocationController < ApplicationController
  def index
    @feedback = Feedback.new
    @spots = Feedback.all
  end

  def create_feedback
  end
end
