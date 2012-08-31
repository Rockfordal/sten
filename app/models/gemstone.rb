class Gemstone < ActiveRecord::Base
  has_many :ownage
  has_many :users, :through => :ownage
  belongs_to :color
  # belongs_to :creator, :class_name => :User, :foreign_key => :creator_id
  has_and_belongs_to_many :chakras
  has_and_belongs_to_many :properties
  has_and_belongs_to_many :energies
  has_and_belongs_to_many :links
  # , dependent: :destroy
  # acts_as_commentable
  # acts_as_cached
  # accepts_nested_attributes_for :properties, allow_destroy: true, reject_if: lambda { |a| a[:name].blank? }
  validates :name, presence: true
  paginates_per 50
  default_scope order('gemstones.name')

  def self.search(search)
    if search
      where('gemstones.name LIKE ? OR gemstones.desc LIKE ? ', "%#{search}%", "%#{search}%")
    else
      scoped
    end
  end

  def self.expire_list_cache
    0.upto(PAGES) do |page|
     expire_cache(page)
    end
  end

end
