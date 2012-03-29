class AddOwnerToGemstones < ActiveRecord::Migration
  def self.up
    add_column :gemstones, :creator_id, :integer
    add_column :gemstones, :updator_id, :integer
  end

  def self.down
    remove_column :gemstones, :creator_id
  end
end
