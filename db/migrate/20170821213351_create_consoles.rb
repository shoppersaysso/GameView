class CreateConsoles < ActiveRecord::Migration[5.1]
  def change
    create_table :consoles do |t|
      t.string :name
      t.integer :year_purchased
      
      t.timestamps
    end
  end
end
