# == Schema Information
#
# Table name: sub_emails
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class SubEmail < ActiveRecord::Base
  validates :email, uniqueness: true, uniqueness: true
end
