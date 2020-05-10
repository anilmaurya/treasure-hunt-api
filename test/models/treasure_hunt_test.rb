# == Schema Information
#
# Table name: treasure_hunts
#
#  id         :bigint           not null, primary key
#  name       :string
#  lat        :float
#  long       :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class TreasureHuntTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
