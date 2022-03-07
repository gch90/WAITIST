class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :created_applications, class_name: "Application", foreign_key: :creator_id
  has_many :applications_including_restaurant, class_name: "Application", foreign_key: :restaurant_id
  has_many :applications_including_waiter, class_name: "Application", foreign_key: :waiter_id
  has_many :restaurant_chatrooms, class_name: "Chatroom", foreign_key: :restaurant_id
  has_many :waiter_chatrooms, class_name: "Chatroom", foreign_key: :waiter_id

  has_many_attached :photos
  has_one_attached :avatar

  # Geocoder MM --->
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  # <---

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

  def waiter_applications_received
    applications_including_waiter - created_applications
  end

  def restaurant_applications_received
    applications_including_restaurant - created_applications
  end

end
