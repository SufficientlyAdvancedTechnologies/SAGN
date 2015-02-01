class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :value
      t.string :display_value
      t.belongs_to :leaderboard, index: true
      t.belongs_to :player, index: true
      t.integer :status
      t.text :meta

      t.timestamps null: false
    end
    add_foreign_key :scores, :leaderboards
    add_foreign_key :scores, :players
  end
end
