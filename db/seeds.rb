# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Role.create(:name => "Admin")
Role.create(:name => "Client")
Role.create(:name => "Assets Manager")
Role.create(:name => "Leasing Agent")
role = Role.where(:name => "Admin").first
User.create(:email => "umakantrajpoot@gmail.com", :first_name => "umakant", :last_name => "rajpoot", :role_id => role.id, :username => "umakantrajpoot", :password => "12345678", :password_confirmation => "12345678")
