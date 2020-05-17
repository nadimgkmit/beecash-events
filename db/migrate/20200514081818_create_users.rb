class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :gender
      t.string :role
      t.boolean :is_active, null: false, default: false
      t.string :password_digest
      t.string :confirmation_token
      t.boolean :is_email_confirmed, null: false, default: false
      t.string :reset_password_token
      t.datetime :reset_password_token_expire_at

      t.timestamps
    end
  end
end
