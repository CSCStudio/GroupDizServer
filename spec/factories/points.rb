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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :point do
    title "MyString"
    description "MyText"
    topic_id 1
    user_id 1
  end
end
