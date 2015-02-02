class CreateLeaderboardsScores < ActiveRecord::Migration
  def change
    create_table :leaderboards_scores do |t|
      t.belongs_to :leaderboard, index: true
      t.belongs_to :player, index: true
      t.integer :value
      t.string :display_value

      t.timestamps null: false
    end
    add_foreign_key :leaderboards_scores, :leaderboards
    add_foreign_key :leaderboards_scores, :players
  end
end
