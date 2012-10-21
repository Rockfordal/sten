class CreateGemstones < ActiveRecord::Migration
  def self.up
    create_table :gemstones do |t|
      t.string :name,         null: false
      t.text :desc,           null: false
      t.integer :color_id

      t.timestamps
    end
  end

  def self.down
    drop_table :gemstones
  end
end
