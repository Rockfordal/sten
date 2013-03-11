# == Schema Information
#
# Table name: energies
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  desc       :text
#  created_at :datetime
#  updated_at :datetime
#

class Energy < ActiveRecord::Base
  has_and_belongs_to_many :gemstones
  #attr_accessible :name, :desc
end
