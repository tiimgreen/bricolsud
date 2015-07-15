class Service < ActiveRecord::Base
  has_many :questions,      dependent: :destroy
  has_many :service_images, dependent: :destroy

  validates :title_en, presence: true
  validates :title_fr, presence: true

  def to_param
    [id, self["title_#{I18n.locale}"].parameterize].join('-')
  end
end
