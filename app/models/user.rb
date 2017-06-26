class User < ActiveRecord::Base

  has_many :listings, :foreign_key => "host_id"
  has_many :reviews, :foreign_key => "guest_id"
  has_many :reservations, through: :listings
  has_many :cities, through: :listings

  def trips
    dummy = "guest_id: ?"

    Reservation.where(guest_id: self)
  end



end
