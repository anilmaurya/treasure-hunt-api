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
class TreasureHunt < ApplicationRecord
    validates :lat, :long, presence: true
    has_many :winners
end
