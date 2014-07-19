# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  point_id   :integer
#  kind       :integer          default(0)
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_votes_on_point_id              (point_id)
#  index_votes_on_user_id               (user_id)
#  index_votes_on_user_id_and_point_id  (user_id,point_id) UNIQUE
#

class Vote < ActiveRecord::Base

	validates :user_id, :point_id, presence: true
	
	belongs_to :user
	belongs_to :point

end
