# == Schema Information
#
# Table name: links
#
#  id          :integer          not null, primary key
#  title       :string(255)      not null
#  url         :string(255)      not null
#  desc        :text
#  linktype_id :integer
#

class Link < ActiveRecord::Base
belongs_to :linktype
has_and_belongs_to_many :gemstones
end
