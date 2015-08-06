# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


[nil, 'registered', 'unpaid', 'moderator', 'teacher', 'admin', 'super_admin'].each do |role|
  Role.find_or_create_by({name: role})
end

user = User.new
user.email = 'michel3@me.com'
user.password = 'michelminot'
user.role ||= Role.find_by_name('super_admin')
user.save!