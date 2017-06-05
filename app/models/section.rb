class Section < ApplicationRecord

  belongs_to :page#, { :optional => true }
  has_many :section_edits
  has_many :admin_users, :through => :section_edits

  scope :visible, lambda { where(:visible => true) }
  scope :invisible, lambda { where(:visible => false) }
  scope :sorted, -> { order("position ASC") }
  scope :newest_first, -> { order("created_at DESC") }
  scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"]) }

end
