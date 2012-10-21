# == Schema Information
#
# Table name: colors
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  desc       :text             default(""), not null
#  created_at :datetime
#  updated_at :datetime
#

class Color < ActiveRecord::Base
  has_many :gemstones
  attr_accessible :name, :desc
  validates :name, presence: true, uniqueness: true
#  acts_as_cached
end
