# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_cucumber-rails3-demo_session',
  :secret => '7a9ef9e8d0f26bfd8514006e3e135d28847a7cca3ec275269d11f16d7b0f60ae024c58487b1dfd151419710c03dbe8b57e578dd7c1c84cfc2ccae245356b5ae7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
