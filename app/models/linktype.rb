# == Schema Information
#
# Table name: linktypes
#
#  id      :integer          not null, primary key
#  name    :string(255)      not null
#  iconurl :string(255)
#

class Linktype < ActiveRecord::Base
  has_many :links
end
