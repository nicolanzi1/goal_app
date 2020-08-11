# == Schema Information
#
# Table name: goals
#
#  id         :bigint           not null, primary key
#  completed  :boolean          default(FALSE), not null
#  details    :text
#  private    :boolean          default(FALSE), not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_goals_on_title    (title)
#  index_goals_on_user_id  (user_id)
#
class Goal < ApplicationRecord
    validates :title, presence: true, length: { minimum: 6 }

    belongs_to :author,
        class_name: :User,
        foreign_key: :user_id
end
