# == Schema Information
#
# Table name: roles
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  beskrivning :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Role < ActiveRecord::Base
  has_and_belongs_to_many :users
#  attr_accessible :name, :beskrivning
end
