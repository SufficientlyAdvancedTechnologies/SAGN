class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.belongs_to :player, index: true
      t.belongs_to :achievement_unlock, index: true
      t.float :multiplier
      t.integer :status
      t.text :meta

      t.timestamps null: false
    end
    add_foreign_key :badges, :players
    add_foreign_key :badges, :achievement_unlocks
  end
end
