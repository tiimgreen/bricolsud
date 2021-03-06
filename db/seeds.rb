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

# Meta info
Setting.create(
  key: 'meta_description_home_index_fr',
  pretty_name: 'Meta Description - Home Page (French)',
  value: "Nombre SIRET: 818178873RM24 - Je peux vous fournir une large gamme de services, y compris, mais sans s'y limiter, de plomberie, chauffage, électrique, jardinage, maintenance de propriété, fenêtres et volets, décoration et bricolage général."
)

Setting.create(
  key: 'meta_description_home_index_en',
  pretty_name: 'Meta Description - Home Page (English)',
  value: "SIRET Number: 818178873RM24 - I can provide a wide range of services including, but not limited to, Plumbing, Heating, Electrical Work, Gardening, Property Maintenence, Windows and Shutters, Decorating and General DIY."
)

Setting.create(
  key: 'meta_description_about_index_fr',
  pretty_name: 'Meta Description - About Page (French)',
  value: "25 ans d'expérience dans Entretien de la maison"
)

Setting.create(
  key: 'meta_description_about_index_en',
  pretty_name: 'Meta Description - About Page (English)',
  value: "25 Years of Experience in Home Maintenance"
)

Setting.create(
  key: 'meta_description_contact_index_fr',
  pretty_name: 'Meta Description - Contact Page (French)',
  value: "S'il vous plaît appelez 0675 889731 ou écrire à d.suddick@sky.com."
)

Setting.create(
  key: 'meta_description_contact_index_en',
  pretty_name: 'Meta Description - Contact Page (English)',
  value: "Please call 0675 889731 or write at d.suddick@sky.com."
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
  title_fr: 'Bricolage général',
  body_en: 'General DIY Body',
  body_fr: 'Bricolage général body',
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

User.create(
  first_name: 'Dave',
  last_name: 'Suddick',
  email: 'd.suddick@sky.com',
  password: 'password',
  password_confirmation: 'password'
)

puts 'Admin (Tim) & Client (Dave) user created'.green
