class Link < ActiveRecord::Base
belongs_to :linktype
has_and_belongs_to_many :gemstones
end
