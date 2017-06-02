# README

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
- 2017/06/02 (GITHUB) - Changed README.  Begin Chapt 7.
