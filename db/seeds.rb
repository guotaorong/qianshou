# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts '這個種子檔會自動建立一個admin帳號, 並且創建 10 個 public wives, 以及10個hidden wives'

create_account = User.create([email: 'example@gmail.com', password: '12345678', password_confirmation: '12345678', is_admin: 'true'])
puts 'Admin account created.'

create_wives = for i in 1..10 do
                 Wife.create!([title: "beauty no.#{i}", description: "這是用種子建立的第 #{i} 個Public工作", is_hidden: 'false'])
end
puts '10 Public wives created.'

create_wives = for i in 1..10 do
                 Wife.create!([title: "beauty no.#{i + 10}", description: "這是用種子建立的第 #{i + 10} 個Hidden工作", is_hidden: 'true'])
end
puts '10 Hidden wives created.'
