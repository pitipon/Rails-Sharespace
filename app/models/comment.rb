class Comment < ApplicationRecord
  belongs_to :workspace
  belongs_to :user

  validates :message, presense: :true
end
