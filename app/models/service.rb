class Service < ActiveRecord::Base
  has_many :questions,      dependent: :destroy
  has_many :service_images, dependent: :destroy

  validates :title, presence: true

  def to_param
    [id, title.parameterize].join('-')
  end
end
