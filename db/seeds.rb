# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#id	name	capacity	type	created_at	updated_at	image_file_name	image_content_type	image_file_size	image_updated_at
Area.create(id: 1, name: 'Digital Jersey Hub', color: 'mediumpurple', capacity: 150)
Area.create(id: 2, name: 'Breakout Zone', color: 'royalblue', capacity: 16, image_file_name: 'BreakoutZone.jpg', image_content_type: 'image/jpeg', image_file_size: 77599, image_updated_at: '29/04/2017 21:51', description: 'This is a great open space for collaboration, a brain break or for small meetings of between nine and 12 people. It includes a SmartTV for presentations.')
Area.create(id: 3, name: 'Skills Zone', color: 'indianred', capacity: 25, image_file_name: 'SkillZone.jpg', image_content_type: 'image/jpeg', image_file_size: 141731, image_updated_at: '29/04/2017 21:55', description: 'An area to use for larger workshops and courses. Sectioned off with sound-proof screens and equipped with a presentation monitor and movable desks, we want our members to make the most of the educational space the Hub has to offer.')
Area.create(id: 4, name: 'Edison - Large Meeting Room', color: 'tomato', capacity: 14, image_file_name: 'Edison.jpg', image_content_type: 'image/jpeg', image_file_size: 117226, image_updated_at: '29/04/2017 21:56', description: 'This room is ideal for large meetings, with maximum seating for 16 people, it is a great place to exercise new ideas and bring the team together. This room has a screen to connect your laptop to via HDMI, Apple TV and Chrome Cast.')
Area.create(id: 5, name: 'Sandberg - Meeting Room', color: 'steellightblue', capacity: 14, image_file_name: 'Sandberg.jpg', image_content_type: 'image/jpeg', image_file_size: 163524, image_updated_at: '29/04/2017 21:56', description: 'Sandberg is the second largest meeting room, with the maximum capacity of six. It is ideal for small meetings and conference calls. This room also has a screen equipped with HDMI and Mac adaptors.')
Area.create(id: 6, name: 'Jobs - Meeting Room', color: 'yellowgreen', capacity: 25, image_file_name: 'Jobs.jpg', image_content_type: 'image/jpeg', image_file_size: 96436, image_updated_at: '29/04/2017 21:56', description: 'Jobs is one of the smaller rooms, holding up to four people. This room is ideal for focused work, confidential calls and small meetings. Jobs also has a screen and HDMI lead.')
Area.create(id: 7, name: 'Gates - Meeting Room', color: 'khaki', capacity: 34, image_file_name: 'Gates.jpg', image_content_type: 'image/jpeg', image_file_size: 64789, image_updated_at: '29/04/2017 21:56', description: 'Gates is our smallest meeting room, equipped with sofa seating it’s ideal for casual meetings and individual work.')

User.create(id: 1, email: 'superadmin@hub.je', password: 'Passw1', role: 'superadmin')
User.create(id: 2, email: 'admin@hub.je', password: 'Passw1', role: 'admin')
User.create(id: 3, email: 'staff@hub.je', password: 'Passw1', role: 'staff')
User.create(id: 4, email: 'guest@hub.je', password: 'Passw1', role: 'guest')

Resource.create(id: 1, item: 'Apple TV')
Resource.create(id: 2, item: 'Chrome Cast')
Resource.create(id: 3, item: 'TV')
Resource.create(id: 4, item: 'White Board')
Resource.create(id: 5, item: 'Flip Chart')
Resource.create(id: 6, item: 'Telephone')
