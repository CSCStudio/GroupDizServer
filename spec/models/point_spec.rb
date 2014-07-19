# == Schema Information
#
# Table name: points
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  topic_id    :integer
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'rails_helper'

RSpec.describe Point, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
