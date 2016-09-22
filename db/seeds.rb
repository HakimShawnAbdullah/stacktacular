require 'faker'

10.times do
    question = Question.create!(title: Faker::Lorem.sentence,
                            content: Faker::Lorem.sentence(30).chop + "?",
                            user_id: Faker::Number.between(1,10))
end

10.times do
  answer = Answer.create!(content: Faker::Lorem.paragraph(3),
                          user_id: Faker::Number.between(1,20),
                          question_id: Faker::Number.between(1,10))
end

10.times do
    user = User.new(name: Faker::Name.name,
                            email: Faker::Internet.email)
    user.password = "password"
    user.save
end

