class Application < ApplicationRecord
  belongs_to :waiter, class_name: "User"
  belongs_to :restaurant, class_name: "User"
  belongs_to :creator, class_name: "User"

  enum status: {
    pending: 0,
    approved: 1,
    rejected: 2
  }
end
