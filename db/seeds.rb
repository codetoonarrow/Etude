# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  first_name: "Eric",
  last_name: "Hartman",
  email: "eric@eric.com",
  password: "123",
  password_confirmation: "123"
)

Teacher.create(
  price: 20,
  subject: 'Spanish',
  postal_code: "M5V 3M1",
  user_id: 1,
  bio: "A BUNCH OF GARBÁGE!",
  picture: "http://lorempizza.com/380/240",
  teaching_since: Time.now,
  street_address: "200 Front St W",
  city: "Toronto",
  province: "ON"
)

User.create(
  first_name: "Luke",
  last_name: "Plourde",
  email: "luke@luke.com",
  password: "123",
  password_confirmation: "123"
)

Teacher.create(
  price: 30,
  subject: 'Spanish',
  postal_code: "M5V 3M2",
  user_id: 2,
  bio: "Lover of safaris",
  picture: "http://placekitten.com/380/240",
  teaching_since: (Time.now - (60*60*24*365)),
  street_address: "225 King St W",
  city: "Toronto",
  province: "ON"
)

User.create(
  first_name: "Ian",
  last_name: "Russell",
  email: "ian@ian.com",
  password: "123",
  password_confirmation: "123"
)

Teacher.create(
  price: 25,
  subject: 'Guitar',
  postal_code: "M5V 3M5",
  user_id: 3,
  bio: "Among the better Ian's out there!",
  picture: "http://placebear.com/380/240",
  teaching_since: (Time.now - (60*60*24*365*2)),
  street_address: "23 Spadina Ave",
  city: "Toronto",
  province: "ON"
)

User.create(
  first_name: "Mike",
  last_name: "Schwartze",
  email: "mike@mike.com",
  password: "123",
  password_confirmation: "123"
)

Teacher.create(
  price: 35,
  subject: 'Guitar',
  postal_code: "M5V 3M4",
  user_id: 4,
  bio: "Learned from David Gilmour!",
  picture: "http://placecage.com/380/240",
  teaching_since: (Time.now - (60*60*24*365*5)),
  street_address: "511 King St W",
  city: "Toronto",
  province: "ON"
)

User.create(
  first_name: "Seat",
  last_name: "Yourself",
  email: "seat@yourself.com",
  password: "123",
  password_confirmation: "123"
)

Student.create(
  user_id: 5
)

Lesson.create(
  time: Time.new(2017, 05, 10, 11, 0, 0),
  student_id: 1,
  teacher_id: 1
)

Lesson.create(
  time: Time.new(2017, 05, 10, 12, 0, 0),
  student_id: 1,
  teacher_id: 1
)

Lesson.create(
  time: Time.new(2017, 05, 10, 13, 0, 0),
  student_id: 1,
  teacher_id: 1
)

x = 0
7.times do
  AvailabilityRange.create(
  teacher_id: 1,
  start_time: 9,
  end_time: 17,
  weekday: x
  )
  x = x + 1
end

x = 0
7.times do
  AvailabilityRange.create(
  teacher_id: 2,
  start_time: 9,
  end_time: 17,
  weekday: x
  )
  x = x + 1
end

x = 0
7.times do
  AvailabilityRange.create(
  teacher_id: 3,
  start_time: 9,
  end_time: 17,
  weekday: x
  )
  x = x + 1
end

x = 0
7.times do
  AvailabilityRange.create(
  teacher_id: 4,
  start_time: 9,
  end_time: 17,
  weekday: x
  )
  x = x + 1
end
