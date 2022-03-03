class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :created_applications, class_name: "Application", foreign_key: :creator_id
  has_many :applications_as_restaurant, class_name: "Application", foreign_key: :restaurant_id
  has_many :applications_as_waiter, class_name: "Application", foreign_key: :waiter_id


  # has_many :applications
  enum user_role: {
    user: 0,
    restaurant: 1
  }
end
