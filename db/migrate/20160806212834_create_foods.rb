class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :ingredients
      t.string :tag
      t.string :photo_url
      t.string :info
      t.references :restaurant, index: true, foreign_key: true
    end
  end
end
