class User < ActiveRecord::Base
  attr_accessible :email, :name
  validates :email, :name, presence: true
  validates :name, uniqueness: true
  validates :email, uniqueness: true

  has_many :contacts
  has_many :favorites
  has_many :favorite_contacts, through: :favorites, source: :contact
  has_one :authentication
end
