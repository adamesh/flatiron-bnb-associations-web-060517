class City < ActiveRecord::Base
  has_many :neighborhoods
  has_many :listings, through: :neighborhoods
  # has_many :reservations, through: :listing #<- we don't need this
end
