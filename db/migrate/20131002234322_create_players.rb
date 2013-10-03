class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :user_id
      t.float :lat
      t.float :lng
      t.boolean :alive
      t.boolean :wolf
      t.boolean :voting

      t.timestamps
    end
  end
end
