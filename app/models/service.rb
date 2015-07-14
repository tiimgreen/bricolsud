class Service < ActiveRecord::Base
  has_many :questions

  validates :title, presence: true

  def to_param
    [id, title.parameterize].join('-')
  end
end
