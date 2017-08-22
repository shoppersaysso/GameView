class CreateConsoles < ActiveRecord::Migration[5.1]
  def change
    create_table :consoles do |t|
      t.string :name
      t.integer :year_purchased
      t.integer :user_id
      t.integer :game_id
      
      t.timestamps
    end
  end
end
