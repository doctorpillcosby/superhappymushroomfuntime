class User < ApplicationRecord
  has_many: :mushroom_lists
  validates: :name, presence: true;
  valudates: :email, presence: true;
end
