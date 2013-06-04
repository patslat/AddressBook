class Contact < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone_number, :user_id

  belongs_to :user

end
