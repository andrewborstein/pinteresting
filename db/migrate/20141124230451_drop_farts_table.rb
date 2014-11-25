class DropFartsTable < ActiveRecord::Migration
  def up
    drop_table :farts
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end