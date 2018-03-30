class CreateAuditLogs < ActiveRecord::Migration[5.1]
  def up
    create_table :audit_logs do |t|
      t.string :auditable_type
      t.integer :auditable_id
      t.text :text

      t.timestamps
    end
    add_index :audit_logs, :auditable_id
    add_index :audit_logs, :auditable_type
  end

  def down
    drop_table :audit_logs
  end

end
