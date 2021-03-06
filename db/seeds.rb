# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Style.destroy_all
Day.destroy_all

Style.create(name: 'ballet')
Style.create(name: 'jazz')
Style.create(name: 'lyrical')
Style.create(name: 'contemporary')
Style.create(name: 'hip-hop')
Style.create(name: 'tap')
Style.create(name: 'urban contemporary')
Style.create(name: 'dancehall')
Style.create(name: 'choreography')
Style.create(name: 'afrobeats')
Style.create(name: 'salsa (on 1)')
Style.create(name: 'salsa (on 2)')
Style.create(name: 'bachata')
Style.create(name: 'zouk')
Style.create(name: 'jazz funk')
Style.create(name: 'heels')
Style.create(name: 'sensual bachata')
Style.create(name: 'kizomba')
Style.create(name: 'samba')
Style.create(name: 'afro-cuban')
Style.create(name: 'afro-brazilian')
Style.create(name: 'flamenco')
Style.create(name: 'ballet folklorico')
Style.create(name: 'acro')
Style.create(name: 'stretch & strength')
Style.create(name: 'dance conditioning')
Style.create(name: 'modern')
Style.create(name: 'musical theater')
Style.create(name: 'ballroom')
Style.create(name: 'irish')
Style.create(name: 'vogue')
Style.create(name: 'waacking')
Style.create(name: 'west coast swing')
Style.create(name: 'east coast swing')
Style.create(name: 'tango')
Style.create(name: 'reggaeton')
Style.create(name: 'rueda de casino')
Style.create(name: 'pole')

Day.create(name: 'Monday')
Day.create(name: 'Tuesday')
Day.create(name: 'Wednesday')
Day.create(name: 'Thursday')
Day.create(name: 'Friday')
Day.create(name: 'Saturday')
Day.create(name: 'Sunday')


