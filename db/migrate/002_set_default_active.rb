class SetDefaultActive < ActiveRecord::Migration[5.0]
  def up
    add_column :students, :active, :boolean, :default => false
  end

  def down
    raise ActiveRecord::IrreversibleMigration, "Can't remove the default"
  end
end