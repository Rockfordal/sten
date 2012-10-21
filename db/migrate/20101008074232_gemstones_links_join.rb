class GemstonesLinksJoin < ActiveRecord::Migration
  def self.up
    create_table :gemstones_links do |t|
      t.references :link, null: false
      t.references :gemstone, null: false
    end
  end

  def self.down
    drop_table :gemstones_links
  end
end
