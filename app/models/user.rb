class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :applications
  enum user_role: {
    user: 0,
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
    against: [ :restaurant_name, :address ],
    using: {
      tsearch: { prefix: true }
    }
  # <---

  def waiter?
    @user_role.zero?
  end
end
