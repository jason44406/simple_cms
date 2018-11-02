# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development?
  Subject.delete_all
  Page.delete_all
  Section.delete_all
  SectionEdit.delete_all
  AuditLog.delete_all
  AdminUser.delete_all

  Subject.create!(
            :id => 1,
          :name => "First Subject",
      :position => 1,
       :visible => true,
    :created_at => Time.now,
    :updated_at => Time.now
  )

  Subject.create!(
            :id => 2,
          :name => "Second Subject",
      :position => 2,
       :visible => true,
    :created_at => Time.now,
    :updated_at => Time.now
  )

  Subject.create!(
            :id => 3,
          :name => "Third Subject",
      :position => 3,
       :visible => false,
    :created_at => Time.now,
    :updated_at => Time.now
  )

  Page.create!(
            :id => 1,
          :name => "Subject 1 Page 1",
     :permalink => "permalink 1-1",
      :position => 1,
       :visible => true,
    :subject_id => 1,
    :created_at => Time.now,
    :updated_at => Time.now
  )

  Page.create!(
            :id => 2,
          :name => "Subject 1 Page 2",
     :permalink => "permalink 1-2",
      :position => 2,
       :visible => true,
    :subject_id => 1,
    :created_at => Time.now,
    :updated_at => Time.now
  )

  Page.create!(
            :id => 3,
          :name => "Subject 2 Page 1",
     :permalink => "permalink 2-1",
      :position => 1,
       :visible => false,
    :subject_id => 2,
    :created_at => Time.now,
    :updated_at => Time.now
  )

  Page.create!(
            :id => 4,
          :name => "Subject 2 Page 1",
     :permalink => "permalink 2-2",
      :position => 2,
       :visible => false,
    :subject_id => 2,
    :created_at => Time.now,
    :updated_at => Time.now
  )

  Page.create!(
            :id => 5,
          :name => "Subject 3 Page 1",
     :permalink => "permalink 3-1",
      :position => 1,
       :visible => false,
    :subject_id => 3,
    :created_at => Time.now,
    :updated_at => Time.now
  )

  Section.create!(
            :id => 1,
          :name => "Subject 1 Page 1 Section 1",
      :position => 1,
       :visible => true,
  :content_type => "Text",
       :content => "This is the section text",
       :page_id => 1,
    :created_at => Time.now,
    :updated_at => Time.now
  )

  Section.create!(
            :id => 2,
          :name => "Subject 1 Page 1 Section 2",
      :position => 2,
       :visible => true,
  :content_type => "Text",
       :content => "This is the section text",
       :page_id => 1,
    :created_at => Time.now,
    :updated_at => Time.now
  )

  Section.create!(
            :id => 3,
          :name => "Subject 1 Page 1 Section 3",
      :position => 3,
       :visible => true,
  :content_type => "Text",
       :content => "This is the section text",
       :page_id => 1,
    :created_at => Time.now,
    :updated_at => Time.now
  )

  Section.create!(
            :id => 4,
          :name => "Subject 1 Page 2 Section 1",
      :position => 1,
       :visible => false,
  :content_type => "Text",
       :content => "This is the section text",
       :page_id => 2,
    :created_at => Time.now,
    :updated_at => Time.now
  )

  Section.create!(
            :id => 5,
          :name => "Subject 1 Page 2 Section 2",
      :position => 2,
       :visible => false,
  :content_type => "Text",
       :content => "This is the section text",
       :page_id => 2,
    :created_at => Time.now,
    :updated_at => Time.now
  )

  AdminUser.create!(
    :first_name => "Jason",
     :last_name => "C",
         :email => "noneya@business.com",
      :username => "Jason",
      :password => "password1"
  )

end
