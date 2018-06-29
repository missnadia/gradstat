class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.belongs_to :student, foreign_key: true
      t.belongs_to :course, foreign_key: true
      t.boolean :attained
      t.datetime :date

      t.timestamps null: false
    end
  end
end
