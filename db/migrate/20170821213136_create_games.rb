class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :title
      t.integer :genre_id
      t.integer :review_id
      t.string :status, :default => "new"

      t.timestamps
    end
  end
end
