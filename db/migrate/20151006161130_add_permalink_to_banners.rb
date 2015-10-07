class AddPermalinkToBanners < ActiveRecord::Migration
  def change
    add_column :banners, :permalink, :string
  end
end
