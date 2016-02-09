class ServiceImage < ActiveRecord::Base
  belongs_to :service

  has_attached_file :image, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :alt_text, presence: true
  validates :image,    attachment_presence: true
end
