require 'faker'

20.times do
	city = City.create(name: Faker::Address.city)
end