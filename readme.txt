=== Revisr ===
Contributors: ExpandedFronts
Tags: revisr, git, git management, revision tracking, revision, backup, database, database backup, database plugin, deploy, commit, bitbucket, github
Requires at least: 3.5.1
Tested up to: 3.9.1
Stable tag: trunk
License: GPLv3
License URI: http://www.gnu.org/licenses/gpl.html

A simple plugin that integrates your git repository with WordPress.

== Description ==

Revisr allows you to manage your WordPress website with a git repository. With Revisr, you can:

* Track changes to the files and database of your WordPress installation
* Optionally use different database versions for each branch
* Commit and push changes to a remote repository (such as Bitbucket and Github)
* Pull changes down from a remote repository
* Easily toggle between branches
* Revert your website files and/or database to an earlier commit
* Discard any unwanted changes
* Manage .gitignore to prevent unwanted files/directories from being tracked

A must have plugin for deploying WordPress using git repositories.

*Git Logo by Jason Long is licensed under the Creative Commons Attribution 3.0 Unported License.*

== Installation ==

= Requirements = 
* A WordPress installation in the root folder of a Git repository
* Git must be installed on the server (most updated versions of cPanel have it preinstalled)
* The PHP functions exec() and passthru() enabled

= Instructions =
* Unzip the plugin folder and upload it to the plugins directory of your WordPress installation.
* Configure any remote repositories on the plugin settings page. Supports git through SSH or HTTPS. 
* If the repository was cloned from a remote, Revisr will attempt to use the settings stored in Git.

= Notes =
Please verify that database backups are working before attempting to revert the database, especially if using Revisr on a production website. You can do this by checking the repository for "revisr_db_backup.sql" after taking a backup.

It is also adviseable to add Revisr to the gitignore file via the settings page to make sure that reverts don't rollback the plugins' functionality. 

== Frequently Asked Questions ==

= How do the database backups/restores work? =
Every time you make a commit and check the box for "Backup database?", Revisr will take a mysqldump of the current database and commit it to the repository. Each backup overwrites the previous, since with Git we can revert to any previous version.

When you select "Restore Database" from the commits screen, Revisr will backup the current database, checkout the old database with the associated commit, and import the raw .SQL file. Note: if you attempt to revert the database for a branch other than the one you have checked out, the other branch will be checked out beforehand.

= Why are my commits timing out? =
This is likely an authentication issue. You can fix this by configuring your SSH keys or using the HTTPS authentication option on the settings page.

= Why aren't my commits being pushed to the remote repository? =
This is either an authentication issue or the remote branch is ahead of yours.

= Can I damage my site with this plugin? =
Care should be taken when dealing with upgrades that depend on the database. Backing up the database before and after major changes is always recommended.

== Screenshots ==

1. The main dashboard of revisr.
2. Easily view changes in files.
3. The commit history.
4. Git settings and options.


== Changelog ==

= 1.3.2 =
* Bugfixes

= 1.3.1 =
* Added error handling
* Commits are no longer automatically pushed by default. This can be changed in the plugin settings page.
* Fixed issue with .gitignore showing as a pending file

= 1.3 =
* Added ability to track/revert changes to the database
* The commits listing now shows commits on the current branch by default
* Added basic compatibility check
* Added settings link to the plugin page

= 1.2.1 =
* Minor bugfixes

= 1.2 =
* Added ability to view the number of pending files in the admin bar
* Small cleanup, updated wording

= 1.1 =
* Bugfixes and improvements
* Added ability to view changes in files from a previous commit

= 1.0.2 =
* Minor bugfixes

= 1.0.1 =
* Updated readme.txt

= 1.0 =
* Initial commit