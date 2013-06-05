require 'SecureRandom'

class Authentication < ActiveRecord::Base
  attr_accessible :password, :token, :user_id

  belongs_to :user

  def self.get_token(user_id)
    puts "Enter your email."
    email = gets.chomp

    puts "Enter your password."
    password = gets.chomp

    if user_id
      user = User.find(user_id)
      authenticate_email(user, email)
    else
      raise "Invalid email" unless user = User.find_by_email(email)
    end

    if authentic?(user, password)
      user.authentication.token ||= SecureRandom.base64(5)
      user.authentication.save
    else
      raise "Invalid login."
    end

    user.authentication.token
  end

  def self.authentic?(user, password)
    user.authentication.password == password
  end

  def self.authenticate_email(user, email)
    raise "invalid email" unless user.email == email
  end
end
