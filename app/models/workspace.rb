class Workspace < ApplicationRecord
  has_many :reviews
  belongs_to :owner
end
