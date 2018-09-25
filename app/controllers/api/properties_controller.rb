class Api::PropertiesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    render json: Property.available
  end
end
