class CreateCharts < ActiveRecord::Migration[5.2]
  def change
    create_table :charts do |t|
      t.datetime :date

      t.timestamps null: false
    end
  end
end
