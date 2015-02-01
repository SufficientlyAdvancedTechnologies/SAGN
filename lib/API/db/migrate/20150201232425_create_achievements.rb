class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :name
      t.text :description
      t.belongs_to :app, index: true
      t.integer :status
      t.text :meta

      t.timestamps null: false
    end
    add_foreign_key :achievements, :apps
  end
end
