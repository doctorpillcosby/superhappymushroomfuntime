class Mushroom < ApplicationRecord
  has_many :mushroom_lists
  has_many :users, through: :mushroom_lists
end
