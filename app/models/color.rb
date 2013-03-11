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
  #attr_accessible :name, :desc
  has_many :gemstones
  # acts_as_cached

  validates :name, presence: true, uniqueness: true

  scope :on, order: 'name'
end
