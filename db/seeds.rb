# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{email: 'jan@mail.com', firstname: 'Jan', lastname: 'Kowalski', password: 'NaNaNaNa', password_confirmation: 'NaNaNaNa', admin:true}, {email: 'anna@mail.com', firstname: 'Anna', lastname: 'Kowalska', password: 'NaNaNaNa', password_confirmation: 'NaNaNaNa'},
 {email: 'marek@mail.com', firstname: 'Marek', lastname: 'Kowalski', password: 'NaNaNaNa', password_confirmation: 'NaNaNaNa'}, {email: 'kaja@mail.com', firstname: 'Kaja', lastname: 'Kowalska', password: 'NaNaNaNa', password_confirmation: 'NaNaNaNa'},
 {email: 'adam@mail.com', firstname: 'Adam', lastname: 'Kowalski', password: 'NaNaNaNa', password_confirmation: 'NaNaNaNa'}])