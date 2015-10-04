class Banner < ActiveRecord::Base
  validates_presence_of :image1
  validates_presence_of :position

end

