class CreateScrapings < ActiveRecord::Migration[6.0]
  def change
    create_table :scrapings do |t|
      t.string :image
      t.text :name
      
      t.timestamps
    end
  end
end
