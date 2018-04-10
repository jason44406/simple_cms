class Subject < ApplicationRecord

  acts_as_list

  include Audit

  # tell ActiveRecord to make a relationship btwn Subject and page
  # has_one :page

  # tell ActiveRecord to make a one to many relationship
  has_many :pages

  scope :visible, lambda { where(:visible => true) }
  scope :invisible, lambda { where(:visible => false) }
  scope :sorted, -> { order("position ASC") }
  scope :newest_first, -> { order("created_at DESC") }
  # example with an argument.  Note this did not like -> instead of lambda written out.
  # This asks for |query| as an argument to .seach.
  # Using this example: Subject.search("Initial")
  # Then the where statement ends up looking like: WHERE (name LIKE '%Initial%')
  scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"]) }

  validates_presence_of :name
  validates_length_of :name, :maximum => 255
  # validate no non-ascii characters.
  # validates_format_of :name, :with => /\A([[:ascii:]])*\z/, :message => "contains non-ascii characters"
  validates :name, format: { :with => /\A([[:ascii:]])*\z/, :message => "contains non-ascii characters" }
end
