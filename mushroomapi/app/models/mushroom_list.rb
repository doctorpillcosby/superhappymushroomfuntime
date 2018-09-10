class MushroomList < ApplicationRecord
  belongs_to: :user
  belongs_to: :mushroom
end
