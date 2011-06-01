class AddDetailsToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :details, :text
  end

  def self.down
   remove_column :events, :details
  end
end
