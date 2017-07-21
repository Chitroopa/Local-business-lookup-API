require 'rails_helper'

describe "patch a destination route", :type => :request do
  let!(:local_business) { FactoryGirl.create(:local_business)}

  before do
    patch '/api/v1/local_business/' + local_business.id.to_s, params: {     :city => "Boston",
    :state => "NY",
    :zipcode => "60931"}
  end

  it 'returns the update confirmation message' do
    expect(JSON.parse(response.body)['message']).to eq('Local Business updated')
  end

  it 'returns a success status' do
    expect(response).to have_http_status(:success)
  end
end
