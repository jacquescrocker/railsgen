# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_rails_generate_session',
  :secret => '486cbd5e1fd77aef4508d7abcf3990b298d8d2abe1324ab7ddf7aa1e70e5743a4edb7cfa84a2d176ec56c6d0230e6a885ca6592e16e03d3838c05deb62fea112'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
