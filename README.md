## High Level
+ Rails Backend - SQLite
+ React Frontend
+ Twilio API
+ Nokogiri Gem - to scrape hasitleaked.com (TBD)

## Schema
+ Users - phone number, password_digest, name
+ Projects - title, artist, link, anticipated_release_date, leak_date, leaked bool
+ Notifications (join table) - user_id, album_id

## Web User Interface Features
+ [ ] sign up with phone number and password - ':tel' input type - password field twice - name
+ [ ] sign in with phone number and password - ':tel' input type
+ [ ] ability to input hasitleaked.com URL to sign up for notifications
+ [ ] ability to see all current albums following
+ [ ] ability to cancel notification
+ [ ] delete account
+ [ ] ability to see most followed, not-yet-leaked projects

## Text Interface Features
+ [ ] Phone number verification

## Additional Features
+ [ ] Ability to search artists on frontend and see/sign up for their albums
+ [ ] ability to pause all notifications
+ [ ] Ability to STOP receiving any messages
