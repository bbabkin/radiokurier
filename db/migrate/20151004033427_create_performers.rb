class CreatePerformers < ActiveRecord::Migration
  def change
    create_table :performers do |t|
      t.integer :type
      t.string :title
      t.text :description
      t.string :photo
      t.string :permalink


      t.timestamps null: false
    end
  end
end
