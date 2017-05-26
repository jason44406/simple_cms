class Subject < ApplicationRecord

  scope :visible, lambda { where(:visible => true) }
  scope :invisible, lambda { where(:visible => false) }
  scope :sorted, -> { order("position ASC") }
  scope :newest_first, -> { order("created_at DESC") }
  # example with an argument.  Note this did not like -> instead of lambda written out.
  # This asks for |query| as an argument to .seach.
  # Using this example: Subject.search("Initial")
  # Then the where statement ends up looking like: WHERE (name LIKE '%Initial%')
  scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"]) }

end
