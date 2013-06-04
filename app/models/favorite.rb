class Favorite < ActiveRecord::Base
  attr_accessible :contact_id, :user_id

  validates :contact_id, :user_id, presence: true
  #validates_with FavoriteValidator

  belongs_to :user
  belongs_to :contact
end
