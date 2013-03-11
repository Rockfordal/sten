# == Schema Information
#
# Table name: gemstones
#
#  id             :integer          not null, primary key
#  name           :string(255)      not null
#  desc           :text             default(""), not null
#  color_id       :integer
#  created_at     :datetime
#  updated_at     :datetime
#  energies_count :integer          default(0)
#  creator_id     :integer
#  updator_id     :integer
#

class Gemstone < ActiveRecord::Base
  belongs_to :color
  has_many :ownage
  has_many :users, through: :ownage
  has_and_belongs_to_many :chakras
  has_and_belongs_to_many :properties
  has_and_belongs_to_many :energies
  has_and_belongs_to_many :links
  paginates_per 50

  validates :name, presence: true

  default_scope order('gemstones.name')

  def self.search(search)
    if search
      where('gemstones.name LIKE ? OR gemstones.desc LIKE ? ', "%#{search}%", "%#{search}%")
    else
      scoped
    end
  end
end
