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

  has_one_attached :cv
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
    applications_including_waiter.order(start_time: :desc) - created_applications
  end

  def restaurant_applications_received
    applications_including_restaurant.order(start_time: :desc) - created_applications
  end

  def waiter_reviews
    applications_including_waiter
      .where(status: 1)
      .where.not(restaurant_comment: nil)
      .where.not(restaurant_rating: nil)
      .where("end_time < ?", Date.today)
  end

  def restaurant_reviews
    applications_including_restaurant
      .where(status: 1)
      .where.not(waiter_comment: nil)
      .where.not(waiter_rating: nil)
      .where("end_time < ?", Date.today)
  end

  def restaurant_avg
     # round 1
    # reviews = restaurant_reviews.pluck(:waiter_rating)
    # return "N/A" if reviews.empty?

    # return reviews.reduce(:+) / reviews.count

    # round 3
    restaurant_reviews.average(:waiter_rating).round(1) || "N/A"
  end

  def waiter_avg
    #   avg = []
    #   waiter_reviews.each do |review|
    #     if review.restaurant_rating.nil?
    #     else
    #       avg << review.restaurant_rating
    #     end
    #   end
    #   if avg.count == 0
    #     return "N/A"
    #   else
    #     return avg.sum / avg.count
    #   end

    waiter_reviews.average(:restaurant_rating).round(1) || "N/A"
  end
end
