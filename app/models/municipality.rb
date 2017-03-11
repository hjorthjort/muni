class Municipality < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :official_id, presence: true, uniqueness: true
end
