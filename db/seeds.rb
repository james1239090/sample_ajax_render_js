# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.destroy_all

Product.create(name: "iPhone 4s", price: 10000)
Product.create(name: "iPhone 5", price: 12000)
Product.create(name: "iPhone 5s", price: 14000)
Product.create(name: "iPhone 6", price: 16000)
Product.create(name: "iPhone 6s", price: 18000)
