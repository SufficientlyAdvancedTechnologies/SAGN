class CreateAchievementsUnlocks < ActiveRecord::Migration
  def change
    create_table :achievements_unlocks do |t|
      t.belongs_to :player, index: true
      t.belongs_to :achievement, index: true
      t.integer :progression
      t.integer :status

      t.timestamps null: false
    end
    add_foreign_key :achievements_unlocks, :players
    add_foreign_key :achievements_unlocks, :achievements
  end
end
