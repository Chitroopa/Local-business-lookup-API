class LocalBusiness < ApplicationRecord
  validates :name,:street, :city, :state, :country, :zipcode, :phone_number, :presence => true
  scope :get_random, -> { order("RANDOM()").first}
  scope :search_by_business_name, -> (business_name) { where("name ilike ?", "%#{business_name}%")}
  scope :search_by_city, -> (city) { where("city ilike ?", "%#{city}%")}
  scope :search_by_state, -> (state) { where("state ilike ?", "%#{state}%")}
  scope :search_by_country, -> (country) { where("country ilike ?", "%#{country}%")}
  scope :search_by_zipcode, -> (zipcode) { where(zipcode: zipcode)}
end
