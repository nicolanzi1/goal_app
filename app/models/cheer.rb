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
class Cheer < ApplicationRecord
    CHEER_LIMIT = 12

    CHEER_LIMIT.freeze

    validates :goal_id, uniqueness: { scope: :giver_id }

    belongs_to :giver, class_name: :User
    belongs_to :goal
end
