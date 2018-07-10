class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.belongs_to :student, foreign_key: true
      t.belongs_to :goal, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
