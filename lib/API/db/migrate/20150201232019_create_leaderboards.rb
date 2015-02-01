class CreateLeaderboards < ActiveRecord::Migration
  def change
    create_table :leaderboards do |t|
      t.string :name
      t.text :description
      t.integer :status
      t.belongs_to :app, index: true
      t.belongs_to :created_by, index: true

      t.timestamps null: false
    end
    add_foreign_key :leaderboards, :apps
    add_foreign_key :leaderboards, :created_bies
  end
end
