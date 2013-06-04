class Contact < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone_number, :user_id

  validates :user_id, :name, presence: true

  belongs_to :user

end
