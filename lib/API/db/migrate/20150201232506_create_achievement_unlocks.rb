class CreateAchievementUnlocks < ActiveRecord::Migration
  def change
    create_table :achievement_unlocks do |t|
      t.belongs_to :achievement, index: true
      t.belongs_to :player, index: true
      t.integer :progression
      t.integer :status
      t.text :meta

      t.timestamps null: false
    end
    add_foreign_key :achievement_unlocks, :achievements
    add_foreign_key :achievement_unlocks, :players
  end
end
