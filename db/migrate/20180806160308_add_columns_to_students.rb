class AddColumnsToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :provider, :string
    add_column :students, :uid, :string
    add_column :students, :oauth_token, :string
  end
end
