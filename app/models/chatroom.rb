class Chatroom < ApplicationRecord
  belongs_to :waiter, class_name: "User"
  belongs_to :restaurant, class_name: "User"

  has_many :messages
end
