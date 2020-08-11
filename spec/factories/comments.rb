# == Schema Information
#
# Table name: comments
#
#  id               :bigint           not null, primary key
#  body             :string           not null
#  commentable_type :string           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  author_id        :integer          not null
#  commentable_id   :integer          not null
#
# Indexes
#
#  index_comments_on_author_id       (author_id)
#  index_comments_on_commentable_id  (commentable_id)
#
FactoryBot.define do
  factory :comment do
  end
end
