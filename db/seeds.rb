# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Macroregion.create([
    {macroreg: Faker::Address.community},
    {macroreg: Faker::Address.community},
    {macroreg: Faker::Address.community},
    {macroreg: Faker::Address.community},
    {macroreg: Faker::Address.community}
])

Card.create([
    {number: Faker::Number.between(0, 100), name: Faker::Address.street_name, macroregion: Macroregion.first},
    {number: Faker::Number.between(0, 100), name: Faker::Address.street_name, macroregion: Macroregion.second},
    {number: Faker::Number.between(0, 100), name: Faker::Address.street_name, macroregion: Macroregion.third},
    {number: Faker::Number.between(0, 100), name: Faker::Address.street_name, macroregion: Macroregion.fourth},
    {number: Faker::Number.between(0, 100), name: Faker::Address.street_name, macroregion: Macroregion.fifth},
])

Adrstype.create([
    {typename:"type"}
])

Nationality.create([
    {country: Faker::Address.country},
    {country: Faker::Address.country}
])

Idiom.create(
    {language: "language"}
)

Group.create([
    {number: Faker::Number.digit, conductor: 1, helper: 1},
    {number: Faker::Number.digit, conductor: 1, helper: 1},
    {number: Faker::Number.digit, conductor: 1, helper: 1},
    {number: Faker::Number.digit, conductor: 1, helper: 1},
    {number: Faker::Number.digit, conductor: 1, helper: 1}
])
# [1..6].each do |d|
# Address.create([
#     {neighborhood: Faker::Address.community,street: Faker::Address.street_address, nationality_id: Nationality.first.id, idiom_id: Idiom.first, name: Faker::TvShows::Friends.character, is_valid?: true, is_visitable?: true, adrstype: Adrstype.first, macroregion_id: Macroregion.first.id, group_id: Group.first.id, card_id: Card.first.id},
#     {neighborhood: Faker::Address.community,street: Faker::Address.street_address, nationality_id: Nationality.first.id, idiom_id: Idiom.first, name: Faker::TvShows::Friends.character, is_valid?: true, is_visitable?: true, adrstype: Adrstype.first, macroregion_id: Macroregion.first.id, group_id: Group.first.id, card_id: Card.second.id},
#     {neighborhood: Faker::Address.community,street: Faker::Address.street_address, nationality_id: Nationality.first.id, idiom_id: Idiom.first, name: Faker::TvShows::Friends.character, is_valid?: true, is_visitable?: true, adrstype: Adrstype.first, macroregion_id: Macroregion.first.id, group_id: Group.first.id, card_id: Card.third.id},
#     {neighborhood: Faker::Address.community,street: Faker::Address.street_address, nationality_id: Nationality.first.id, idiom_id: Idiom.first, name: Faker::TvShows::Friends.character, is_valid?: true, is_visitable?: true, adrstype: Adrstype.first, macroregion_id: Macroregion.first.id, group_id: Group.first.id, card_id: Card.fourth.id}
# ])
# end