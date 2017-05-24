class CreateSubjects < ActiveRecord::Migration[5.1]

  def up
    create_table :subjects do |t|
      # Same as 't.column "name", :string'
      t.string "name"
      # Same as 't.column "position", :integer'
      t.integer "position"
      # Same as 't.column "visible", :boolean'
      t.boolean "visible", :default => false
      t.timestamps
    end
  end

  def down
    drop_table :subjects
  end

end
