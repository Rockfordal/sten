class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :name, :null => false
      t.string :photo_file_name, :null => false
      t.string :photo_content_type, :null => false
      t.text :beskrivning
      t.datetime :photo_updated_at
      t.integer :photo_file_size
      t.timestamps
    end
  end

  def self.down
   drop_table :images 
  end
end
