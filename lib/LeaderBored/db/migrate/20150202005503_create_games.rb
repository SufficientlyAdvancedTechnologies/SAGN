class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.belongs_to :developer, index: true
      t.integer :status

      t.timestamps null: false
    end
    add_foreign_key :games, :developers
  end
end
