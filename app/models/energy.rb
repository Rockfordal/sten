class Energy < ActiveRecord::Base
  has_and_belongs_to_many :gemstones
  attr_accessible :name, :desc
end
