class CreateLeaderboards < ActiveRecord::Migration
  def change
    create_table :leaderboards do |t|
      t.belongs_to :game, index: true
      t.string :name
      t.text :description
      t.integer :status
      t.text :meta

      t.timestamps null: false
    end
    add_foreign_key :leaderboards, :games
  end
end
