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

class Point < ActiveRecord::Base
  
  validates :title, :topic_id, :user_id, presence: true
  
  belongs_to :user
  belongs_to :topic
  has_many :votes, dependent: :destroy

  def username
    self.user.try(:nickname)
  end
end
