module Api::V1
  class LocalBusinessController < ApplicationController

    def index
      if params[:random] === 'yes'
        @local_business = LocalBusiness.get_random
      elsif params[:name]
        @local_business = LocalBusiness.search_by_business_name(params[:name])
      elsif params[:zip]
        @local_business = LocalBusiness.search_by_zipcode(params[:zip])
      elsif params[:city]
        @local_business = LocalBusiness.search_by_city(params[:city])
      elsif params[:stateAbbr]
        @local_business = LocalBusiness.search_by_state(params[:stateAbbr])
      elsif params[:country]
        @local_business = LocalBusiness.search_by_country(params[:country])
      else
        @local_business = LocalBusiness.all.paginate(:page => params[:page], :per_page => 10)
      end
      json_response(@local_business)
    end

    def show
      @local_business = LocalBusiness.find(params[:id])
      json_response(@local_business)
    end

    def create
      @local_business = LocalBusiness.create!(local_business_params)
      json_response(@local_business)

    end

    def update
      @local_business = LocalBusiness.find(params[:id])
      if @local_business.update!(local_business_params)
        render status: 200, json: {
          message: "Local Business updated"
        }
        end
      end

    def destroy
      @local_business = LocalBusiness.find(params[:id])
      if @local_business.destroy!
        render status: 200, json: {
          message: "Local Business deleted"
        }
      end
    end


  private
    def local_business_params
      params.permit( :name,:street, :city, :state, :country, :zipcode, :phone_number, :business_type, :current_status, :key_peoples, :founder, :founded, :line_of_business, :number_of_employees,  :website)
    end

  end
end
