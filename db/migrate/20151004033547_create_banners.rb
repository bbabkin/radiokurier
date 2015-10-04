class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :image1
      t.string :image2
      t.integer :position
      t.integer :title

      t.timestamps null: false
    end
  end
end
