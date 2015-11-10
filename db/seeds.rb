Outline.delete_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
%w(and dna dan nda).each do |name|
  email = "#{name}@#{name}.com"
  next if User.exists? email: email
  User.create!(email: email, password: 'abc123',
               password_confirmation: 'abc123')
end


# Create a couple outlines

western = Outline.create!(subjects: 'Earl Jatters', settings: 'sleepy frontier town', themes: 'western')
suspense = Outline.create!(subjects: 'Our Hero', settings: 'Post-Apocalyptic Ocean City', themes: 'suspense')
fanfiction_one = Outline.create!(subjects:"Jareth", settings: "Toby's Wedding", themes: 'revenge')
grandma = Outline.create!(subjects: 'Grandma', settings: 'Her House', themes: 'big brother is watching you')

loss = Outline.create!(subjects: 'Foghorn Leghorn', settings: "The farm of course", themes: "loss and redeption")

