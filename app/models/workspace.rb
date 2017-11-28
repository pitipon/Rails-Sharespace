class Workspace < ApplicationRecord
  belongs_to :owner
  has_many :comments
  has_many :orders
  has_many :picture

  validates :user_id, :owner_id
end
