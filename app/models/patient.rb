class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments
  has_many :notes, as: :noteable

  validates :name, presence: true
  validates :birthday, presence: true
  validates :email,
            uniqueness: { allow_blank: true },
            absence: { if: :younger_than_13? }

  def younger_than_13?
    birthday > 13.years.ago
  end
end
