class RenameTypeToRoleInPerformers < ActiveRecord::Migration
  def change
	  rename_column :performers, :type, :role
  end
end
