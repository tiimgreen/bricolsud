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

puts 'Settings created'.green

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
  title_en: 'Windows & Shutters',
  title_fr: 'Fenêtres et volets',
  body_en: 'Windows & Shutters Body',
  body_fr: 'Fenêtres et volets Body',
  font_class: 'fa fa-th-large',
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
  title_en: 'Plumbing',
  title_fr: 'Plomberie',
  body_en: 'Plumbing Body',
  body_fr: 'Plomberie Body',
  font_class: 'fa fa-wrench',
  order: 7
)

Service.create(
  title_en: 'General DIY',
  title_fr: 'DIY général',
  body_en: 'General DIY Body',
  body_fr: 'DIY général body',
  order: 8
)

puts 'Services created'.green

User.create(
  first_name: 'Tim',
  last_name: 'Green',
  email: 'tiimgreen@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

puts 'Admin user created'.green
