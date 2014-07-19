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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vote do
    user_id 1
    point_id 1
    kind 1
  end
end
