# frozen_string_literal: true

class PainLog < ApplicationRecord
  belongs_to :user
  belongs_to :body_part
  belongs_to :pain

  validates :datetime_occurred,
            :body_part_id,
            :pain_id,
            :pain_description,
            :trigger,
            presence: true

  validates :pain_level,
            presence: true,
            numericality: true

  delegate :name, to: :body_part, prefix: true
  delegate :name, to: :pain, prefix: true

  def self.past_week
    where('datetime_occurred >= ? AND datetime_occurred <= ?', (Date.today.to_datetime - 7.days), Date.today.to_datetime)
  end

  def self.past_two_weeks
    where('datetime_occurred >= ? AND datetime_occurred <= ?', (Date.today.to_datetime - 14.days), Date.today.to_datetime)
  end

  def self.group_by_pain_and_count
    pain_ids_and_counts = group(:pain_id).count
    pain_ids_and_counts.map do |k, v|
      [ Pain.find(k).name, v ]
    end
  end
  # def self.avg_pain_level_by_day
  #   x = PainLog.all.map do |log|
  #     [log.datetime_occurred.to_date => log.pain_level]
  #   end
  # end
end
