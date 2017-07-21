class LocalBusiness < ApplicationRecord
  validates :name,:street, :city, :state, :country, :zipcode, :phone_number, :presence => true
  scope :get_random, -> { order("RANDOM()").first}
  scope :search_by_business_name, -> (business_name) { where("name like ?", "%#{business_name}%")}
end
