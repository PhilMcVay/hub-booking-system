# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#id	name	capacity	type	created_at	updated_at	image_file_name	image_content_type	image_file_size	image_updated_at
Area.create(id: 1, name: 'Digital Jersey Hub', capacity: 150)
Area.create(id: 2, name: 'Breakout Zone', capacity: 16, image_file_name: 'BreakoutZone.jpg', image_content_type: 'image/jpeg', image_file_size: 77599, image_updated_at: '29/04/2017 21:51')
Area.create(id: 3, name: 'Skills Zone', capacity: 25, image_file_name: 'SkillZone.jpg', image_content_type: 'image/jpeg', image_file_size: 141731, image_updated_at: '29/04/2017 21:55')
Area.create(id: 4, name: 'Edison - Large Meeting Room', capacity: 14, image_file_name: 'Edison.jpg', image_content_type: 'image/jpeg', image_file_size: 117226, image_updated_at: '29/04/2017 21:56')
Area.create(id: 5, name: 'Sandberg - Meeting Room', capacity: 14, image_file_name: 'Sandberg.jpg', image_content_type: 'image/jpeg', image_file_size: 163524, image_updated_at: '29/04/2017 21:56')
Area.create(id: 6, name: 'Jobs - Meeting Room', capacity: 25, image_file_name: 'Jobs.jpg', image_content_type: 'image/jpeg', image_file_size: 96436, image_updated_at: '29/04/2017 21:56')
Area.create(id: 7, name: 'Gates - Meeting Room', capacity: 34, image_file_name: 'Gates.jpg', image_content_type: 'image/jpeg', image_file_size: 64789, image_updated_at: '29/04/2017 21:56')
User.create(id: 1, email: 'superadmin@hub.je', password: 'Passw1', role: 'superadmin')
User.create(id: 2, email: 'admin@hub.je', password: 'Passw1', role: 'admin')
User.create(id: 3, email: 'staff@hub.je', password: 'Passw1', role: 'staff')
User.create(id: 4, email: 'guest@hub.je', password: 'Passw1', role: 'guest')