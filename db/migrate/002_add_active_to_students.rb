class AddActiveToStudents < ActiveRecord::Migration[4.2]
  def change
    add_column :students, :active, :boolean, default: false
  end
end
