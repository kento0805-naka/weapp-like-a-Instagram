# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  caption    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_posts_on_user_id  (user_id)
#
class Post < ApplicationRecord
    belongs_to :user

    has_many :photos, dependent: :destroy
    has_many :likes, -> { order(created_at: :desc) }, dependent: :destroy
    has_many :comments, dependent: :destroy
    accepts_nested_attributes_for :photos

    def liked_by(user)
        # user_idとpost_idが一致するlikeを検索する
        Like.find_by(user_id: user.id, post_id: id)
      end

end
