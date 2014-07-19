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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :topic do
    title "MyString"
    description "MyText"
    creator_id 1
    code "MyString"
  end
end
