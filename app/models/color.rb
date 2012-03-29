class Color < ActiveRecord::Base
  has_many :gemstones
  attr_accessible :name, :desc
  validates :name, :presence => true, :uniqueness => true
#  acts_as_cached
end
