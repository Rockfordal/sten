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

  validates :name, presence: true, uniqueness: true

  scope :on, order: 'name'
end
