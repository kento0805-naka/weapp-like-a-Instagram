# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  image      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer          not null
#
# Indexes
#
#  index_photos_on_post_id  (post_id)
#
require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
