class CreateLinktypes < ActiveRecord::Migration
  def self.up
    create_table :linktypes do |t|
      t.string :name, :null => false
      t.string :iconurl
    end
  end

  def self.down
    drop_table :linktypes
  end
end
