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
class Winner < ApplicationRecord
    validates :name, uniqueness: {scope: :treasure_hunt_id}
    belongs_to :treasure_hunt

    def puzzle_name
        treasure_hunt&.name
    end
end
