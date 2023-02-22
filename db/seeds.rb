require 'faker'

Faker::Config.locale = 'fr-CA'

Restaurant.destroy_all

10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: %w[chinese italian japanese french belgian].sample
  )
end

# Faker::Restaurant.review
