# == Schema Information
#
# Table name: sub_emails
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe SubEmail, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
