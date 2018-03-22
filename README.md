# README

This is the Rails 5 project.  I originally named it Lynda-Rails-5-Project, as it was part of the Ruby on Rails 5 Essential training.  

This README would normally document whatever steps are necessary to get the
application up and running.

This is a test project.  I do what I want.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Change log:
- I am adding this to make sure I get all the changes up to GITHUB correctly.
- 2017/05/24 (GITHUB) - Changed README directly on GITHUB in master.
- 2017/05/24 (local) - Pulled master from GITHUB, merged local master and test.  Working in branch test
- 2017/05/25 (GITHUB) - Changed README directly on GITHUB in master.
- 2017/05/25 (local) - git checkout master (to switch to master branch)
              - git pull (to pull down latest master from GIT that I uploaded yesterday)
              - atom . to check README file (it has the change I made on GITHUB)
              - git checkout test (to switch to test branch)
              - git merge master test (to merge the changed master to test)
              - Now remote/master and local/master and local/test should be identical.  (Except for this README, of course.)
- 2017/05/26 (local) - git push to sync to GITHUB
- 2017/05/31 (GITHUB) - After the long weekend, back to work.  Changed README on GITHUB directly in master branch so I can pull it down.
- 2017/05/31 (local) - Pulled to local master, merged with test.  Working on Chap 6.            
              - Had to roll back 2 versions to correct a misspelling of "positions" in the pages field.
              - Admin_Users: - The file was named adminuser.  I think it should be admin_user based on the migration.  I think I missed a step earlier.  So here's my note to remember what I did in case it comes back to bite me later.
              - In the Sections class, I had to make the belongs_to optional.  The video don't show this, so it needs to be changed back.
              - git push to GITHUB created pull request.   
- 2017/06/02 (GITHUB) - Changed README.  Begin Chap 7.
- 2017/06/02 (local) - Pulled to master, merged with test.  Completed Chap 7 and the first 3 sections of chapt 8.  Push to GITHUB.
- 2017/06/05 (GITHUB) - Changed README.  Corrected some spelling errors on README.  Continue Chap 8.
- 2017/06/05 (local) - Pulled to master, merged with test.  Completed chapter 8.  Push to GITHUB prior to doing the Chap 8 challenge.
- 2017/06/05 (GITHUB) - Pull request; merged to master.  
- 2017/06/05 (local) - Pulled to master, merged to test.  Created new branch for Challenge; aptly named Chap_8_Challenge.  Push up to GITHUB.
- 2017/06/05 (GITHUB) - Pull request, merged to master.
- 2017/06/06 (local) - Pulled to master, merged to test.  Reviewed Chap 8 Challenge.
- 2017/06/07 (local) - Completed work on Chap 9. push up to GITHUB.
- 2017/06/08 (local) - Pulled down, merged to test.  Completed Chapter 10.  Push up to GITHUB.  
- 2017/06/12 (local) - Pulled down from GITHUB, merged to test.  Completed Chap 11.  Push up to GITHUB.
- 2017/06/12 (GITHUB) - Created pull request, merged to master.  Deleted branch.
- 2017/06/13 (local) - Pulled down from GITHUB, merged with test.  Completed Chapt 12.  Push up to GITHUB.
- 2017/06/14 (local) - Pulled down from GITHUB.  config/initializers/session_store.rb was not present by default.  I added it. Began chapter 13
- 2017/06/16 (local) - Continue Chapt 13.  Could not see the development.log file.  It was defined in the .gitignore, so I commented that line out.  That made the file visible, but I don't want to add the logs to GITHUB.  Instead I changed the option in Atom>Prefs>Tree-view and un-checked the hide VCS ignored files.  Push up to GITHUB.
- 2017/06/16 (GITHUB) - Created pull request and merged branches.
- 2017/06/19 (local) - Pulled down from GITHUB.  Changing the strategy on naming the branches, now that I'm almost finished.  Using the chapter numbers instead of 'test' everytime.  Will continue this way in the future.  Completed Chap 14.  Push up to GITHUB
- 2017/06/20 (GITHUB) - Took a break and completed a different class on the subject of GITHUB.  
- 2017/06/20 (local) - Pulled down from GITHUB into local master.  Created new branch Chap15.  Working on first challenge.  Created controller and modified routes.  Modified Model.  Going to commit and push to GITHUB at this point.  
- 2017/06/21 (local) - Didn't pull down.  Going to experiment with this a little when there are more than one commits on a single branch.  Created the admin user index / new / edit / delete.  All tested and working.  Push up to GITHUB, then continue with the rest of Chap 15.
- 2017/06/22 (GITHUB) - Merged Chap 15 branch to master.  Will continue work on the remainder of Chap 15.
- 2017/06/23 (local) - Completed Chap 15.  Thus ends this course.  Push up to GITHUB.
------------------------------------------------------------------
NOTE that everything after this point is my own and not involved in the lessons.
------------------------------------------------------------------
- 2018/03/21 - Updated gems due to vulnerabilities - loofah-CVE-2018-8048, Nokogiri-CVE-2017-9050
- 2018/03/21 - Added the pry and ap gems.  Changed the footer to visually divide the admin stuff from non-admin stuff.
- 2018/03/22 - *** The app relationships are as such.  Subject --> Page --> Section.  Each is a one to many relationship.  The Page and Section indexes only showed Pages for a single Subject, or Sections for a single Page.  Updated the method names to reflect this better, and added a more inclusive index page of all Pages and all Subjects.  
