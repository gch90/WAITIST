class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :created_applications, class_name: "Application", foreign_key: :creator_id
  has_many :applications_as_restaurant, class_name: "Application", foreign_key: :restaurant_id
  has_many :applications_as_waiter, class_name: "Application", foreign_key: :waiter_id

  enum user_role: {
    waiter: 0,
    restaurant: 1
  }

  # PG_search MM --->
  include PgSearch::Model

  pg_search_scope :search_in_waiters,
    against: [ :first_name, :last_name, :address ],
    using: {
      tsearch: { prefix: true }
    }

  pg_search_scope :search_in_restaurants,
    against: [ :restaurant_name, :address, :restaurant_type, :summary ],
    using: {
      tsearch: { prefix: true }
    }
end
