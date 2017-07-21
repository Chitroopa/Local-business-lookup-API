class LocalBusinessController < ApplicationController

  def index
    @business = {"name": "Google"}
    json_response(@business)
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end
end
