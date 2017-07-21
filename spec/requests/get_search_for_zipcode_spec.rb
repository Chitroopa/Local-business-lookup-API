require 'rails_helper'

describe "get a matched local_business by country", :type => :request do
  let!(:local_business) { FactoryGirl.create_list(:local_business, 5)}

  before { get '/api/v1/local_business?country=us'}

  it 'returns local business that matches search country' do
    expect(JSON.parse(response.body).size).to eq(5)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
