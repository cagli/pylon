# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# [nil, 'registered', 'unpaid', 'moderator', 'teacher', 'admin', 'super_admin'].each do |role|
#   Role.find_or_create_by({name: role})
# end

# user = User.new
# user.email = 'toto@me.com'
# user.password = 'totototo'
# user.role ||= Role.find_by_name('super_admin')
# user.save!



Html = Course.create(course_id: 4, title: 'HTML', description: 'Les bases de l HTML ou comment créer son premier site web', category: 'Front End', level: 'Debutant', teacher: 'timothee', learning_skills: 'HTML CSS', course_points: 20)
CSS = Course.create(course_id: 5, title: 'CSS', description: 'Les bases de l HTML ou comment créer son premier site web', category: 'Front End', level: 'Debutant', teacher: 'timothee', learning_skills: 'HTML CSS', course_points: 20)
Javascript=  Course.create(course_id: 6, title: 'Javascript', description: 'Les bases de l HTML ou comment créer son premier site web', category: 'Front End', level: 'Debutant', teacher: 'timothee', learning_skills: 'HTML CSS', course_points: 50)
Ruby = Course.create(course_id: 7, title: 'Ruby', description: 'Les bases de l HTML ou comment créer son premier site web', category: 'Front End', level: 'Debutant', teacher: 'timothee', learning_skills: 'HTML CSS', course_points: 80)

Html2 = Course.create(course_id: 8, title: 'HTML', description: 'Les bases de l HTML ou comment créer son premier site web', category: 'Front End', level: 'Debutant', teacher: 'timothee', learning_skills: 'HTML CSS', course_points: 20)
CSS2 = Course.create(course_id: 9, title: 'CSS', description: 'Les bases de l HTML ou comment créer son premier site web', category: 'Front End', level: 'Debutant', teacher: 'timothee', learning_skills: 'HTML CSS', course_points: 20)
Javascript2 = Course.create(course_id: 10, title: 'Javascript', description: 'Les bases de l HTML ou comment créer son premier site web', category: 'Front End', level: 'Debutant', teacher: 'timothee', learning_skills: 'HTML CSS', course_points: 50)
Ruby2 = Course.create(course_id: 11, title: 'Ruby', description: 'Les bases de l HTML ou comment créer son premier site web', category: 'Front End', level: 'Debutant', teacher: 'timothee', learning_skills: 'HTML CSS', course_points: 80)

Html3 = Course.create(course_id: 12, title: 'HTML', description: 'Les bases de l HTML ou comment créer son premier site web', category: 'Front End', level: 'Debutant', teacher: 'timothee', learning_skills: 'HTML CSS', course_points: 20)
CSS3 = Course.create(course_id: 13, title: 'CSS', description: 'Les bases de l HTML ou comment créer son premier site web', category: 'Front End', level: 'Debutant', teacher: 'timothee', learning_skills: 'HTML CSS', course_points: 20)
Javascript3 =  Course.create(course_id: 14, title: 'Javascript', description: 'Les bases de l HTML ou comment créer son premier site web', category: 'Front End', level: 'Debutant', teacher: 'timothee', learning_skills: 'HTML CSS', course_points: 50)
Ruby3 = Course.create(course_id: 15, title: 'Ruby', description: 'Les bases de l HTML ou comment créer son premier site web', category: 'Front End', level: 'Debutant', teacher: 'timothee', learning_skills: 'HTML CSS', course_points: 80)
