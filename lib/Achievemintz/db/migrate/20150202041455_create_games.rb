class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :description
      t.integer :status
      t.belongs_to :developer, index: true
      t.text :meta

      t.timestamps null: false
    end
    add_foreign_key :games, :developers
  end
end
