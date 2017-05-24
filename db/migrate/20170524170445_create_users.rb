class CreateUsers < ActiveRecord::Migration[5.1]
  def up
    create_table :users do |t|
      # Add :id => false if no id column is desired.
      # Ex: create_table :users, :id => false do |t|
      t.column "first_name", :string, :limit => 25
      # COLUMN is not required as it is assumed with a table.
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40
      #when these records present, rails automatically populates for you.
      # t.datetime "created_at"
      # t.datetime "updated_at"
      # t.timestamps is shorthand for the created and updated above.
      t.timestamps
    end
  end

  def down
    drop_table :users
  end

end
