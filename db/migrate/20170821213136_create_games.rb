class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :developer
      t.string :genre
      t.string :esrb_rating
      t.boolean :multiplayer
      t.string :status, :default => "new"
<<<<<<< HEAD

      t.belongs_to :user, index: true, foreign_key: true
=======
      t.integer :review_id, :default => 0
>>>>>>> final-touches

      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
