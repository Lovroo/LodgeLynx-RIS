class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :prebivalisca
  belongs_to :najemi
end
