class NewColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :new_column, :boolean, :default => false
  end
end
