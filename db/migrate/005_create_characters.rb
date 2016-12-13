class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :catchphrase
      t.integer :actor_id
      t.integer :show_id
      t.timestamps
    end
  end
end
