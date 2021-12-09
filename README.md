# Bookmark Manager

## Specifications

* Show a list of bookmarks ✅
* Add new bookmarks
* Delete bookmarks
* Update bookmarks
* Comment on bookmarks
* Tag bookmarks into categories
* Filter bookmarks by tag
* Users are restricted to manage only their own bookmarks

## User Stories 
* As a user, so I can quickly visit a website, I would like to see a list of bookmarks
* As a user, I would like to add the site's address and title to bookmark manager.
* As a user, so I can remove sites I'm no longer interested in, I would like to remove bookmarks. 
* As a user, so I can keep my bookmarks organised, I would like to tag my bookmarks into categories. 
* As a user, so I can quickly find the websites I want, I would like to filter my bookmarks by category
* As a user, so I can stop other people from deleting my bookmarks, I would like to be the only one who can manage my bookmarks. 

## Domain Model

# ![Domain Model](https://github.com/sabrinalord/bookmark_manager/blob/main/screenshot/model_shows_bookmark_list.png)

## Database Set up

### Main Database

1. Connect to psql
2. Create the database using psql command CREATE DATABASE bookmark_manager
3. Connect to the database psql command \c bookmark_manager
4. Run the query saved in the file 01_create_bookmarks_table.sql

### Test Database

1. Connect to psql
2. Create the test database using psql command CREATE DATABASE bookmark_manager_test
3. Connect to the database psql command \c bookmark_manager_test
4. Run the query saved in the file 01_create_bookmarks_table.sql