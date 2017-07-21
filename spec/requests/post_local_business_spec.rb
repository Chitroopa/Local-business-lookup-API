require 'rails_helper'

describe "post a destination route", :type => :request do

  before do
    post '/api/v1/local_business', params: { :name => "Test business name",
    :street => "123, 124th LN NE",
    :city => "Seattle",
    :state => "WA",
    :country => "USA",
    :zipcode => "98031",
    :phone_number => "345.678.1298",
    :business_type => "Public",
    :current_status => "Active",
    :key_peoples => "Mark, CEO",
    :founder => "Martin",
    :founded => "2011-03-03",
    :line_of_business => "Restaurant",
    :number_of_employees => 45,
    :website => "www.testbusiness.com" }
  end

  it 'returns the destination name' do
    expect(JSON.parse(response.body)['name']).to eq('Test business name')
  end

  it 'returns the destination city' do
    expect(JSON.parse(response.body)['phone_number']).to eq('345.678.1298')
  end

  it 'returns a success status' do
    expect(response).to have_http_status(:success)
  end
end
