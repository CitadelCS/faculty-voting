# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.create({ name: 'Group A', is_multi_role: false, description: 'Proposal group A'})
Role.create({ name: 'Group B', is_multi_role: false, description: 'Proposal group B'})
Role.create({ name: 'Group A+B', is_multi_role: true, description: 'ALL proposals'})
