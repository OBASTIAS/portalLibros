class Book < ApplicationRecord
  belongs_to :user, optional: true
  enum status: [:available, :reserved, :buyed, :requested]
  has_many :reservations

end
