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

Html = Course.create(course_id: 1, title: 'Les Bases du HTML', description: 'Les bases de l HTML ou comment créer son site web', category: 'Front End', level: 'Debutant', teacher: 'timothee', learning_skills: 'HTML CSS', course_points: 20)
CSS = Course.create(course_id: 2, title: 'Les Bases du CSS', description: 'Les bases du CSS ou comment personnaliser son site web', category: 'Front End', level: 'Debutant', teacher: 'timothee', learning_skills: 'HTML CSS', course_points: 20)
Javascript= Html = Course.create(course_id: 3, title: 'Les Bases du JavaScript', description: 'Les bases du JavaScript ou comment faire de l interactivité sur son site web', category: 'Front End', level: 'Debutant', teacher: 'timothee', learning_skills: 'HTML CSS JavaScript', course_points: 50)
Ruby = Course.create(course_id: 4, title: 'Les Bases de Ruby', description: 'Les bases de Ruby ou comment créer sa premiere application web', category: 'Front End', level: 'Debutant', teacher: 'timothee', learning_skills: 'Ruby', course_points: 80)