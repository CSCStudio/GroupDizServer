# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  nickname   :string(255)
#  identifier :string(255)
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_users_on_identifier  (identifier) UNIQUE
#

class User < ActiveRecord::Base
	
	validates :nickname, :identifier, presence: true
	validates :identifier, uniqueness: true

end
