class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :username
  has_many :images

  # def self.search(search)
	#     if search
	#       # find(:all, :conditions => ['caption LIKE ?', "%#{search}"])
	#     where('username like ?', "#{search}%")
	#     # else
	#     #   find(:all)
	#     end
  #   end

end
