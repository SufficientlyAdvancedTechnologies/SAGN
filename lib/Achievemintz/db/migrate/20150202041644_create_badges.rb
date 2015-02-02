class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :name
      t.text :description
      t.text :meta
      t.integer :status
      t.belongs_to :achievement_unlock, index: true
      t.belongs_to :player, index: true
      t.float :multiplier

      t.timestamps null: false
    end
    add_foreign_key :badges, :achievement_unlocks
    add_foreign_key :badges, :players
  end
end
