class ForecastsController < ApplicationController
  before_action :authenticate_user!  # Ensure only logged-in users can access

  def show
    # Any logic you need for the forecast page
  end
end
