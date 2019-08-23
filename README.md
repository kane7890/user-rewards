The User Rewards System

Description:

This Rails web app manages users in a purchase and rewards points system with a series of stores.

The user can sign up, and login to the system.  Sign-up is done using username and password, with confirmation, along with city and state.  The user may also sign-up or log-in using their Facebook login. The user initially starts with 0 points, and each purchase increases the point total--unless the user has more than 20 points in their account.  Once the user reaches more than 20 points, the user can elect to use points to make a free purchase.  If the user makes a free purchase with points, the user's point total is deducted 20 points, but the purchase is added to the list of purchases.  The user can then proceed to further accumulate points.  The user of course can log out.

Installation Instructions:

To install the app, one needs to download all of the files at https://github.com/kane7890/user-rewards

Contributors Guide
  Based on rails, activerecord, sqlite3, bcrypt, rake and several other gems (please see Gemfile)

License:
  https://opensource.org/licenses/MIT
