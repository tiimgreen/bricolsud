# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Setting.create(
  key: 'company_address_short_en',
  pretty_name: 'Short Company Address (English)',
  value: 'Le Perier, Echourgnac, France'
)

Setting.create(
  key: 'company_address_short_fr',
  pretty_name: 'Short Company Address (French)',
  value: 'Le Perier, Echourgnac, France'
)

Setting.create(
  key: 'company_phone_number_en',
  pretty_name: 'Company Phone Number (English)',
  value: '0123 456 789'
)

Setting.create(
  key: 'company_phone_number_fr',
  pretty_name: 'Company Phone Number (French)',
  value: '0123 456 789'
)

Setting.create(
  key: 'company_name_en',
  pretty_name: 'Copmany Name (English)',
  value: 'Bricolsud'
)

Setting.create(
  key: 'company_name_fr',
  pretty_name: 'Copmany Name (French)',
  value: 'Bricolsud'
)

Setting.create(
  key: 'contact_email_en',
  pretty_name: 'Contact Email (English)',
  value: 'd.suddick@sky.com'
)

Setting.create(
  key: 'contact_email_fr',
  pretty_name: 'Contact Email (French)',
  value: 'd.suddick@sky.com'
)

Setting.create(
  key: 'company_tag_line_en',
  pretty_name: 'Tag Line (English)',
  value: 'Anything for the House & Garden'
)

Setting.create(
  key: 'company_tag_line_fr',
  pretty_name: 'Tag Line (French)',
  value: 'Tout pour la maison et le jardin'
)

puts "Settings created".green

Service.create(
  title_en: 'Electrics',
  title_fr: 'Électrique',
  body_en: 'Electrics Body',
  body_fr: 'Électrique Body',
  font_class: 'fa fa-bolt',
  order: 1
)

Service.create(
  title_en: 'Heating',
  title_fr: 'Chauffage',
  body_en: 'Heating Body',
  body_fr: 'Chauffage Body...',
  font_class: 'fa fa-fire',
  order: 2
)

Service.create(
  title_en: 'Plumbing',
  title_fr: 'Plomberie',
  body_en: 'Plumbing Body',
  body_fr: 'Plomberie Body',
  font_class: 'fa fa-wrench',
  order: 3
)

Service.create(
  title_en: 'Decorating',
  title_fr: 'Décoration',
  body_en: 'Painting Body',
  body_en: 'Décoration Body',
  font_class: 'fa fa-paint-brush',
  order: 4
)

Service.create(
  title_en: 'Gardening',
  title_fr: 'Jardinage',
  body_en: 'Gardening Body',
  body_fr: 'Jardinage Body',
  font_class: 'fa fa-gavel',
  order: 5
)

Service.create(
  title_en: 'Property Maintenence',
  title_fr: 'Maintenance de propriété',
  body_en: 'Property Maintenence Body',
  body_fr: 'Maintenance de propriété',
  font_class: 'fa fa-home',
  order: 6
)

Service.create(
  title_en: 'Roofing Repair',
  title_fr: 'Toiture réparation',
  body_en: 'Roofing Body',
  body_fr: 'Toiture réparation Body',
  order: 7
)

Service.create(
  title_en: 'General DIY',
  title_fr: 'DIY général',
  body_en: 'General DIY Body',
  body_fr: 'DIY général body',
  order: 8
)
