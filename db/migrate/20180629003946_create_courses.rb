class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :time_spent
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
