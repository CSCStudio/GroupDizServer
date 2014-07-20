# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
4.times do 
  User.create(nickname: SecureRandom.urlsafe_base64(6), identifier: SecureRandom.hex)
end

Topic.destroy_all
10.times do 
  Topic.create(title: "this is title", description: 'is point description', code: SecureRandom.hex(3), creator: User.last)
end

Point.destroy_all

Topic.all.each do |topic|
  topic.participants << User.all

  User.all.each do |user|
    topic.points.create(title: "here is point title", description: 'is point description',user: user) 
  end
end


