class User < ActiveRecord::Base
	
	validates :nickname, :identifier, presence: true
	validates :identifier, uniqueness: true

end
