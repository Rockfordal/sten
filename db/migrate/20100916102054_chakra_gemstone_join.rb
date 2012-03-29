class ChakraGemstoneJoin < ActiveRecord::Migration
  def self.up
    create_table :chakras_gemstones, :id => false do |t|
      t.integer :chakra_id
      t.integer :gemstone_id
    end
  end

  def self.down
    drop_table :chakras_gemstones
  end
end