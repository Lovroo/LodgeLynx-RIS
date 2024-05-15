class Najemi < ApplicationRecord
  belongs_to :user
  belongs_to :prebivalisca
  has_one :rating
end
