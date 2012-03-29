class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.string :title, :null => false
      t.string :url, :null => false
      t.text :desc
      t.references :linktype
    end
  end

  def self.down
    drop_table :links
  end
end
