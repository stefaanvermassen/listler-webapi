class List < ActiveRecord::Base
  has_many :user_lists
  has_many :users, through: :user_lists
  has_many :items
end
