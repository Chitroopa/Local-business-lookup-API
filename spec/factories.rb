FactoryGirl.define do

  factory(:local_business) do
    name("Test business name")
    street("123, 124th LN NE")
    city("Seattle")
    state("WA")
    country("USA")
    zipcode("98031")
    phone_number("345.678.1298")
    business_type("Public")
    current_status("Active")
    key_peoples("Mark, CEO")
    founder("Martin")
    founded("2011-03-03")
    line_of_business("Restaurant")
    number_of_employees(45)
    website("www.testbusiness.com")
  end
end
