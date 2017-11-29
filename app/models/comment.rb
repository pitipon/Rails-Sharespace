class Comment < ApplicationRecord
  belongs_to :workspace
  belongs_to :user

  validates :message, presence: :true
end
