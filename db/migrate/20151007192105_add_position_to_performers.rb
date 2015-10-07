class AddPositionToPerformers < ActiveRecord::Migration
  def change
    add_column :performers, :position, :integer
  end
end
