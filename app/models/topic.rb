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

class Topic < ActiveRecord::Base

  validates :title, :creator_id, :code, presence: true
  validates :code, uniqueness: true

  belongs_to :creator, class_name: 'User'

  has_and_belongs_to_many :participants, class_name: 'User', foreign_key: "topic_id", association_foreign_key: 'user_id', join_table: 'topics_participants'
  has_many :points

  before_validation :init_code, on: :create
  after_create :init_participant


  def creator_name
    self.creator.try(:nickname)
  end

  private

  def init_participant
    self.participants << self.creator
  end

  def init_code
    self.code = SecureRandom.hex(3)
  end
end
