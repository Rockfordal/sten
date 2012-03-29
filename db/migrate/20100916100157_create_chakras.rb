class CreateChakras < ActiveRecord::Migration
  def self.up
    create_table :chakras do |t|
      t.string :name,       :null => false
      t.integer :nr,        :null => false
      t.text  :desc,        :null => false
      t.timestamps
    end
  end
  
  def self.down
    drop_table :chakras
  end
end
