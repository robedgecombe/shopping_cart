require 'faker'

Book.destroy_all

25.times do ||
  Book.create(
    title: "#{Faker::Lorem.word}",
    author: "#{Faker::Name.name}",
    description: "yeah awesome book",
    price: rand(10..20)
    )
end
