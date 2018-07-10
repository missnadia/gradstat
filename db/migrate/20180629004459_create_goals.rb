class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.boolean :completed
      t.datetime :date
      t.integer :hours_spent

      t.timestamps null: false
    end
  end
end
