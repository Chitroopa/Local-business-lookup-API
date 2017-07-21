require 'rails_helper'

describe "delete a destination route", :type => :request do
  let!(:local_business) { FactoryGirl.create(:local_business)}

  before do
    delete '/api/v1/local_business/' + local_business.id.to_s
  end

  it 'returns the deletion confirmation message' do
    expect(JSON.parse(response.body)['message']).to eq('Local Business deleted')
  end

  it 'returns a success status' do
    expect(response).to have_http_status(:success)
  end
end
