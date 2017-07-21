require 'rails_helper'

describe "get a matched local_business by zipcode", :type => :request do
  let!(:local_business) { FactoryGirl.create_list(:local_business, 5)}

  before { get '/api/v1/local_business?zip=98031'}

  it 'returns local business that matches search zipcode' do
    expect(JSON.parse(response.body).size).to eq(5)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
