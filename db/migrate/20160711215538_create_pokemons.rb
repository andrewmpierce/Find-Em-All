class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :type
      t.string :egg
      t.string :location
      t.boolean :incense
      t.boolean :lure
      t.integer :user_lvl
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end
