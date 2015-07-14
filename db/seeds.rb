# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Setting.create(
  key: 'company_address_short',
  pretty_name: 'Short Company Address',
  value: 'Le Perier, Echourgnac, France'
)

Setting.create(
  key: 'company_phone_number',
  pretty_name: 'Company Phone Number',
  value: '0123 456 789'
)

Setting.create(
  key: 'company_name',
  pretty_name: 'Copmany Name',
  value: 'Bricolsud'
)

Setting.create(
  key: 'contact_email',
  pretty_name: 'Contact Email',
  value: 'd.suddick@sky.com'
)

Setting.create(
  key: 'company_tag_line',
  pretty_name: 'Tag Line',
  value: 'Anything for the House & Garden'
)

puts "Settings created".green

Service.create(title: 'Electrics', font_class: 'fa fa-bolt', order: 1)
Service.create(title: 'Heating', font_class: 'fa fa-fire', order: 2)
Service.create(title: 'Plumbing', font_class: 'fa fa-wrench', order: 3)
Service.create(title: 'Painting', font_class: 'fa fa-paint-brush', order: 4)
Service.create(title: 'Gardening', font_class: 'fa fa-gavel', order: 5)
Service.create(title: 'Property Maintenence', font_class: 'fa fa-home', order: 6)
Service.create(title: 'Roofing Repair', order: 7)
Service.create(title: 'General DIY', order: 8)
