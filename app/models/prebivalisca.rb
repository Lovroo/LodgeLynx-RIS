class Prebivalisca < ApplicationRecord
  belongs_to :user
  has_many :najemi
  has_many :favorite
  has_many :rating
end
