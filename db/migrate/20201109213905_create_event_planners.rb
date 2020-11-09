class CreateEventPlanners < ActiveRecord::Migration[6.0]
  def change
    create_table :event_planners do |t|
      t.string :name
      t.string :description
      t.integer :star_rating
      t.string :specialty
    end
  end
end
