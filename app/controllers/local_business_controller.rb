class LocalBusinessController < ApplicationController

  def index
    @local_business = LocalBusiness.all
    json_response(@local_business)
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end
end
