# == Schema Information
#
# Table name: chakras
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  nr         :integer          not null
#  desc       :text             default(""), not null
#  created_at :datetime
#  updated_at :datetime
#  placering  :string(255)
#  element    :string(255)
#  kropp      :string(255)
#

class Chakra < ActiveRecord::Base
has_and_belongs_to_many :gemstones
#attr_accessible :name, :nr, :desc

validates :name, presence: true, uniqueness: true
validates :nr, presence: true, uniqueness: true
end
