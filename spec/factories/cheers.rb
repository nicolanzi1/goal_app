# == Schema Information
#
# Table name: cheers
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  giver_id   :integer          not null
#  goal_id    :integer          not null
#
# Indexes
#
#  index_cheers_on_giver_id              (giver_id)
#  index_cheers_on_goal_id_and_giver_id  (goal_id,giver_id) UNIQUE
#
FactoryBot.define do
  factory :cheer do
  end
end
