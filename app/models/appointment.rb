class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  has_many :notes, as: :noteable

  validates :when, presence: true
  validates :doctor, presence: true
  validates :patient, presence: true
end
