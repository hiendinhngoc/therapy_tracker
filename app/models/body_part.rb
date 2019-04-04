class BodyPart < ApplicationRecord
  belongs_to :user
  has_many :exercise_logs
  has_many :pain_logs
  has_many :physical_therapy_sessions

  validates :name, presence: true

end
