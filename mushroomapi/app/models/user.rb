class User < ApplicationRecord
  has_many :mushroom_lists
  has_many :mushrooms, through: :mushroom_lists
  validates :name, presence: true
  validates :email, presence: true
end
