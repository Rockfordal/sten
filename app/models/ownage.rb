# == Schema Information
#
# Table name: ownages
#
#  id          :integer          not null, primary key
#  gemstone_id :integer
#  user_id     :integer
#  prioritet   :integer
#  typ         :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Ownage < ActiveRecord::Base
 belongs_to :gemstone
 belongs_to :user
end
