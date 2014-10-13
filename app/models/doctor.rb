class Doctor < ActiveRecord::Base
  belongs_to :supervisor, class_name: "Doctor"
  has_many :reports, foreign_key: "supervisor_id", class_name: "Doctor"
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :notes, as: :noteable

  validates :name, presence: true
  validates :speciality, inclusion: {in: ['General Practice',
                                          'Pediatrics',
                                          'OB/GYN',
                                          'Orthopedics'],
                                     message: "%{value} is not a valid medical speciality"}
  validates :medical_license, uniqueness: true, presence: true
end
