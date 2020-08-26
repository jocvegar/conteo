# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Zone.create([{ name: 'Tegucigalpa' },{ name: 'Comayagüela' },{ name: 'Las Casitas' }])

City.create!([{ name: 'Ciudad 1', zone: Zone.first },{ name: 'Ciudad 2', zone: Zone.second },{ name: 'Ciudad 3', zone: Zone.last }])

VotingCenter.create!([{ name: 'Centro de Votación 1', city: City.first },{ name: 'Centro de Votación 2', city: City.second },{ name: 'Centro de Votación 3', city: City.last }])
