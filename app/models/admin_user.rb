class AdminUser < ApplicationRecord

  # We changed the table name from User in a different migration.
  # So if this was still file and class was still called User we would need to do this:
  # self.table_name = "admin_users"
  # .... Instead, we just changed the name of the class and file.

  has_and_belongs_to_many :pages
  has_many :section_edits
  has_many :sections, :through => :section_edits

end
