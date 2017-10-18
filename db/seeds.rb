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
	Char3p5Sheet.create!([	{ name: 'Ban', strength: 18, dextery: 12, constitution: 18, intelligence: 14, 
							wisdom: 10, charisma: 12, gold_piece: 0, silver_piece: 0, cooper_piece: 0, 
							skills: 'Diplomacia +4, Natação +4, Conhecimento: nobreza +4, Observar +4
							Ouvir +4, Procurar +4, Cavalgar +4', feats: 'Ataque Poderoso, Trespassar',
							description:'Jovem ruivo, pele branca e olhos castanhos. Bon Vivant que é um 
							filantropo na realidade. Leal e neutro.'},
						{ name: 'Sahada', strength: 14, dextery: 18, constitution: 15, intelligence: 14, 
							wisdom: 14, charisma: 10, gold_piece: 0, silver_piece: 0, cooper_piece: 0, 
							skills: 'Acrobacia +4, Furtividade +4, Saltar +4, Observar +4
							Ouvir +4, Procurar +4, Equilíbrio +4', feats: 'Especialização em Combate, Esquiva',
							description: 'Rapaz de cabelos e olhos castanhos. Bon Vivant brincalhão que é um filantropo na realidade.
							 Leal e neutro.' }])
puts "Generating D&D 3.5 char [OK]"