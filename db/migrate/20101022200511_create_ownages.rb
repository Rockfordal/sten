class CreateOwnages < ActiveRecord::Migration
  def self.up
    create_table :ownages do |t|
      t.integer :gemstone_id
      t.integer :user_id
      t.integer :prioritet
      t.string :typ

      t.timestamps
    end
  end

  def self.down
    drop_table :ownages
  end
end
