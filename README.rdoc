## High Level
+ Rails Backend - Postgresql
+ Ember Frontend
+ Twilio API
+ Mechanize Gem - allows interaction with HasItLeaked Site to sign up for alerts
+ Mailcatcher Gem - allows parsing of emails to send text notifications to users
+ Nokogiri Gem - to scrape hasitleaked.com (TBD)

## Schema
+ Users - phone number, password_digest, name
+ Albums - title, artist, url
+ Notifications (join table) - user_id, album_id

## Web User Interface Features
+ [ ] sign up with phone number and password - ':tel' input type - password field twice - name
+ [ ] sign in with phone number and password - ':tel' input type
+ [ ] ability to input hasitleaked.com URL to sign up for notifications
+ [ ] ability to see all current albums following
+ [ ] ability to cancel notification
+ [ ] delete account

## Text Interface Features
+ [ ] Phone number verification

## Additional Features
+ [ ] Ability to search artists on frontend and see/sign up for their albums
+ [ ] ability to pause all notifications
+ [ ] Ability to STOP receiving any messages
