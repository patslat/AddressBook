class FavoriteValidator < ActiveModel::Validator
  def validate(record)
    unless user_has_contact?(record)
      record.errors[:favorite] << "You need to have a contact to favorite it."
    end
  end

  private
  def user_has_contact?(record)
    User.find(record[:user_id]).contacts.include?(Contact.find(record[:contact_id]))
  end
end