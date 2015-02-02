class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :name
      t.text :description
      t.integer :status
      t.belongs_to :game, index: true

      t.timestamps null: false
    end
    add_foreign_key :achievements, :games
  end
end
