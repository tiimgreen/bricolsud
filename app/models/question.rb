class Question < ActiveRecord::Base
  belongs_to :service

  validates :question_en, presence: true
  validates :question_fr, presence: true
  validates :answer_en,   presence: true
  validates :answer_fr,   presence: true
  validates :service_id,  presence: true
end
