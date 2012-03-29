class EnergyGemstoneJoin < ActiveRecord::Migration
  def self.up
    create_table :energies_gemstones, :id => false do |t|
      t.integer :gemstone_id, :null => false
      t.integer :energy_id, :null => false
    end
  end

  def self.down
    drop_table :energies_gemstones
  end
end
