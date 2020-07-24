# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


emails = [
    'user_1@example.com',
    'user_2@example.com',
    'user_3@example.com',
    'user_4@example.com',
    'user_5@example.com'
]

emails.each { |email|
    User.create(
    email: email,
    password: 'password'
    )
}

habits = [
    'Meditate',
    'Exercise',
    'Drink 6 Cups of Water',
    'Stay Home'
]

dates = [
    Date.today,
    Date.yesterday
]

User.all.each { |user|
    habits.each { |habit|
        user.habits.build(
            name: habit
        )
    }
    user.save
}

Habit.all.each { |habit| 
    dates.each { |date|
        habit.logs.build(
            date_time: date
        )
    }
    habit.save
}