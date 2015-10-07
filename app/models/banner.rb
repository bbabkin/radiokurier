class Banner < ActiveRecord::Base
  mount_uploader :image1, ImageUploader # Tells rails to use this uploader for this model.  
  mount_uploader :image1, ImageUploader # Tells rails to use this uploader for this model.  
  scope :sorted, lambda { order("banners.position ASC")}
  scope :newest_first, lambda { order("banners.created_at DESC")}
  scope :search, lambda {|query|
    where(["name LIKE ?", "%#{query}%"])
  }



end

