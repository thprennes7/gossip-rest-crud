require 'faker'

20.times do
	u = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Simpsons.quote, is_admin: 0)
end

50.times do
	p = Potin.create(title: Faker::StarWars.quote, content: Faker::StarWars.wookie_sentence, user_id: User.all.sample.id)
end