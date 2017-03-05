#
# Seeds.rb is used to seed a new database with data. Always run rake:db drop before this
#

puts "Seeding Database with new data. Database should be empty..."

#Super Admin
Admin.create :email => "niall@niallquinn.me", :password => "changeMe", :password_confirmation => "changeMe"

#John Smith
#Customer
customer_one = Customer.create :name => "John Smith"
#Customer Admin User
CustomerAdmin.create :first_name => "John", :last_name => "Smith", :email => "niall+johnSmith@niallquinn.me", :password => "johnSmith", :password_confirmation => "johnSmith", :customer_id => customer_one.id
Theme.create :primary_color => "#40bada", :primary_inverse_color => "#FFFFFF", :primary_font_color => "#000000", :secondary_font_color => "#C0C0C0", :customer_id => customer_one.id
#News Items
#Update this when I can add image url not blob

#Sam Jones
customer_two = Customer.create :name => "Sam Jones"
CustomerAdmin.create :first_name => "Sam", :last_name => "Jones", :email => "niall+johnSmith@niallquinn.me", :password => "samJones", :password_confirmation => "samJones", :customer_id => customer_two.id
Theme.create :primary_color => "#40bada", :primary_inverse_color => "#FFFFFF", :primary_font_color => "#000000", :secondary_font_color => "#C0C0C0", :customer_id => customer_two.id

#Jennifer Kelly
customer_three = Customer.create :name => "Jennifer Kelly"
CustomerAdmin.create :first_name => "Jennifer", :last_name => "Kelly", :email => "niall+johnSmith@niallquinn.me", :password => "jenniferKelly", :password_confirmation => "jenniferKelly", :customer_id => customer_three.id
Theme.create :primary_color => "#40bada", :primary_inverse_color => "#FFFFFF", :primary_font_color => "#000000", :secondary_font_color => "#C0C0C0", :customer_id => customer_three.id
