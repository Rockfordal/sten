class Image < ActiveRecord::Base
#  belongs_to :people
#  has_and_belongs_to_many :gemstones
  #attr_accessible :name, :beskrivning
  
  validates :name, :presence => true, :uniqueness => true
  validates :photo_file_name, :presence => true, :uniqueness => true

  has_attached_file :photo,
     :url => "/photos/:id/:style/:basename.:extension",
     :path => ":rails_root/public/photos/:id/:style/:basename.:extension",
     :styles => { :small => "50>50", :thumb => "100x100>", :medium => "300x300>"}
end
