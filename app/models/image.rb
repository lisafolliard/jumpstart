class Image < ActiveRecord::Base
  has_attached_file :image

   validates :image_file_name, :presence => true
   validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

   validates :description, :presence => true

   belongs_to :user
end
