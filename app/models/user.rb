# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :exercises, dependent: :destroy
  has_many :exercise_logs, dependent: :destroy
  has_many :pain_logs, dependent: :destroy
  has_many :pt_sessions, dependent: :destroy
  has_many :pains, dependent: :destroy
  has_many :body_parts, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end
end
