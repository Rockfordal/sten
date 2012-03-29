class GemstonePropertyJoin < ActiveRecord::Migration
  def self.up
    create_table :gemstones_properties, :id => false do |t|
    t.integer :gemstone_id, :null => false
    t.integer :property_id, :null => false
    end
  end

  def self.down
    drop_table :gemstones_properties
  end
end
