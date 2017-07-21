# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seed

  def self.begin
    seed = Seed.new
    seed.generate_destinations
  end

  def generate_destinations
    20.times do |i|
      local_business = LocalBusiness.create!(
      name: Faker::Company.name, #=> "Hirthe-Ritchie"
      street: Faker::Address.street_address, #=> "282 Kevin Brook
      city: Faker::Address.city,
      state: Faker::Address.state_abbr, #=> "AP"
      country: 'USA',
      zipcode: Faker::Address.zip, #=> "58517" or "66259-8212"
      phone_number: Faker::PhoneNumber.phone_number, #=> "397.693.1309"
      business_type: 'public',
      current_status: 'Active',
      key_peoples: Faker::Name.name + ',' + Faker::Name.title,
      founder: Faker::Name.name,
      founded: Faker::Date.between_except(15.year.ago, 0.year.from_now, Date.today), #=> "Wed, 24 Sep 2014"
      line_of_business: Faker::Company.profession, #=> "firefighter"
      number_of_employees: Faker::Number.between(3, 10000),
      website: Faker::Internet.url,
      )
    end

    5.times do |i|
      local_business = LocalBusiness.create!(
      name: Faker::Company.name, #=> "Hirthe-Ritchie"
      street: Faker::Address.street_address, #=> "282 Kevin Brook
      city: Faker::Address.city,
      state: Faker::Address.state_abbr, #=> "AP"
      country: 'USA',
      zipcode: Faker::Address.zip, #=> "58517" or "66259-8212"
      phone_number: Faker::PhoneNumber.phone_number, #=> "397.693.1309"
      business_type: 'public',
      current_status: 'Inactive',
      key_peoples: Faker::Name.name + ',' + Faker::Name.title,
      founder: Faker::Name.name,
      founded: Faker::Date.between_except(15.year.ago, 0.year.from_now, Date.today), #=> "Wed, 24 Sep 2014"
      line_of_business: Faker::Company.profession, #=> "firefighter"
      number_of_employees: Faker::Number.between(3, 10000),
      website: Faker::Internet.url,
      )
    end
  end

end

Seed.begin
