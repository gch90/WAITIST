class Application < ApplicationRecord
  belongs_to :waiter, class_name: "User"
  belongs_to :restaurant, class_name: "User"
  belongs_to :creator, class_name: "User"

  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :waiter_rating, inclusion: { in: (1..10).to_a }

  enum status: {
    pending: 0,
    approved: 1,
    rejected: 2
  }
end
