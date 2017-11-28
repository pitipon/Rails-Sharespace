class Picture < ApplicationRecord
  belongs_to :workspace

  validates :image_url, uniqueness: true, presence: true
  validates :title, presence: true
end
