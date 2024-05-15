class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :prebivalisca
  has_many :najemi
  has_many :favorite
  has_many :message
  has_many :conversation
  has_many :rating
end
