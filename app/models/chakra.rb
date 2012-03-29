class Chakra < ActiveRecord::Base
has_and_belongs_to_many :gemstones
#attr_accessible :name, :nr, :desc

validates :name, :presence => true, :uniqueness => true
validates :nr, :presence => true, :uniqueness => true
end
