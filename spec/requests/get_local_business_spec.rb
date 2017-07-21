require 'rails_helper'

describe "get all local_business route", :type => :request do
  let!(:local_businesses) { FactoryGirl.create_list(:local_business, 20)}

  before { get '/api/v1/local_business'}

  it 'returns all local business' do
    expect(JSON.parse(response.body).size).to eq(10)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
