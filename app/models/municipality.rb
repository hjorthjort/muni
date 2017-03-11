class Municipality < ApplicationRecord
  has_many :images

  validates :name, presence: true, uniqueness: true
  validates :official_id, presence: true, uniqueness: true
end
