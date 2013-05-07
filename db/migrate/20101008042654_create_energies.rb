class CreateEnergies < ActiveRecord::Migration
  def self.up
    create_table :energies do |t|
      t.string :name, null: false
      t.text :info
    end
  end

  def self.down
    drop_table :energies
  end
end
