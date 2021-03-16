class CheckOut < ApplicationRecord
  validates :user_id, presence: true
  validates :book_id, presence: true
  validates :due_date, presence: true
  belongs_to :user
  belongs_to :book
end
