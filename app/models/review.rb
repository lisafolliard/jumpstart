class Review < ActiveRecord::Base
   validates :author, :presence => true
   validates :review, :presence => true
   
   belongs_to :image
end
