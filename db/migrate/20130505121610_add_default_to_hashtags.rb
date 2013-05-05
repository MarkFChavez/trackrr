class AddDefaultToHashtags < ActiveRecord::Migration
  def change
  	change_column :hashtags, :name, :string, :default => "twitter"
  end
end
