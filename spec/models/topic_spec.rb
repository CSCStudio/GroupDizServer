# == Schema Information
#
# Table name: topics
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  creator_id  :integer
#  code        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_topics_on_code        (code) UNIQUE
#  index_topics_on_creator_id  (creator_id)
#

require 'rails_helper'

RSpec.describe Topic, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
