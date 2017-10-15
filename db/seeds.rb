# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Generating RPG Systems"
	RpgSystem.create!([	{ name: 'D&D 3.5' },
						{ name: 'Vampire 3' }])

puts "Generating RPG Systems [OK]"

puts "Generating D&D 3.5 char"
	Char3p5.create!([	{ name: 'Ban', strength: 18, dextery: 12, constitution: 18, intelligence: 14, 
							wisdom: 10, charisma: 12 },
						{ name: 'Sahada', strength: 14, dextery: 18, constitution: 15, intelligence: 14, 
							wisdom: 14, charisma: 10 }])
puts "Generating D&D 3.5 char [OK]"