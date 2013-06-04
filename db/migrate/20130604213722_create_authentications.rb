class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.string :token
      t.integer :user_id
      t.string :password

      t.timestamps
    end
  end
end
