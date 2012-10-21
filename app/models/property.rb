# == Schema Information
#
# Table name: properties
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  parent_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Property < ActiveRecord::Base
#has_and_belongs_to_many :gemstones
end
