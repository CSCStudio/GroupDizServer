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

require 'rails_helper'

RSpec.describe Vote, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
