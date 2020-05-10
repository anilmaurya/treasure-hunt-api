# == Schema Information
#
# Table name: winners
#
#  id               :bigint           not null, primary key
#  name             :string
#  treasure_hunt_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require 'test_helper'

class WinnerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
