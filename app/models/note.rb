class Note < ActiveRecord::Base
  belongs_to :noteable, polymorphic: true

  validates :text, presence: true, length: { maximum: 1000 }
end
