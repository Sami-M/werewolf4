class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.integer :player
      t.integer :game_id
      t.integer :user_id
      t.string :email

      t.timestamps
    end
  end
end
