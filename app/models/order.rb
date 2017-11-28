class Order < ApplicationRecord

  has_many :transactions
  belongs_to :workspace
  belongs_to :user

end
