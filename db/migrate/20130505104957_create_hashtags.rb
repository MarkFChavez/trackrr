class CreateHashtags < ActiveRecord::Migration
  def change
    create_table :hashtags do |t|
      t.string :name
      t.references :user

      t.timestamps
    end
    add_index :hashtags, :user_id
  end
end
