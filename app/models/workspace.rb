class Workspace < ApplicationRecord
  belongs_to :owner
  has_many :comment
  has_many :order
  has_many :picture

  # validates :user_id, :owner_id
end
