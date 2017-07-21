class LocalBusinessController < ApplicationController

  def index
    @local_business = LocalBusiness.all
    json_response(@local_business)
  end

  def show
    @local_businesses = LocalBusiness.find(params[:id])
    json_response(@local_businesses)
  end

  def create
    @local_businesses = LocalBusiness.create!(local_businesses_params)
    json_response(@local_businesses)

  end

  def update
    @local_businesses = LocalBusiness.find(params[:id])
    if @local_businesses.update!(local_businesses_params)
      render status: 200, json: {
        message: "Local Business updated"
      }
      end
    end

  def destroy
    @local_businesses = LocalBusiness.find(params[:id])
    if @local_businesses.destroy!
      render status: 200, json: {
        message: "Local Business deleted"
      }
    end
  end


private
  def local_business_params
    params.permit(  :name,:street, :city, :state, :country, :zipcode, :phone_number, :business_type, :current_status, :key_peoples, :founder, :founded, :line_of_business, :number_of_employees,  :website)
  end

end
