5.times do
  attributes = {
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: %w[chinese italian japanese french belgian].sample
  }
  Restaurant.create(attributes)
end
