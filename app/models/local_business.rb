class LocalBusiness < ApplicationRecord
  validates :name,:street, :city, :state, :country, :zipcode, :phone_number, :presence => true
  scope :get_random, -> { order("RANDOM()").first}
end
