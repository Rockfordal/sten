class AddSakerTillChakra < ActiveRecord::Migration
  def self.up
    add_column :chakras, :placering, :string
    add_column :chakras, :element, :string
    add_column :chakras, :kropp, :string
  end

  def self.down
    remove_column :chakras, :placering
    remove_column :chakras, :element
    remove_column :chakras, :kropp
  end
end
