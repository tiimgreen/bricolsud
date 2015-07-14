class Service < ActiveRecord::Base
  has_many :questions, dependent: :destroy

  validates :title, presence: true

  def to_param
    [id, title.parameterize].join('-')
  end
end
