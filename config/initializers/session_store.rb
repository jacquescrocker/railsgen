# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_railsgen_session',
  :secret => '9d0d245e538c4e7959fd8393b9b53dc31192e3120e104f9151d029210fd066dc7cdaadb6055b60d213aca24b308bd57a7795f1d7f688d478069ab79d517377c6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
