class CreatePages < ActiveRecord::Migration[5.1]

  def up
    create_table :pages do |t|
      t.string "name"
      # Same as 't.column "permalink", :integer'
      t.string "permalink"
      t.integer "position"
      t.boolean "visible", :default => false
      t.integer "subject_id"
      t.timestamps
    end
    # add_column("pages", "subject_id", :integer)
    add_index("pages", "subject_id")
    add_index("pages", "permalink")
  end

  def down
    drop_table :pages
  end

end
