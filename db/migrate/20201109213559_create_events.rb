class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :location
      t.string :date
      t.string :type
      t.references :user, null: false, foreign_key: true
      t.references :event_planner, null: false, foreign_key: true
    end
  end
end
