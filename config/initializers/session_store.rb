# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_canary_session',
  :secret      => '12b11047d905762b6cb53bd7d407f91f75ded16ce39056d798c58b68cd917165450b4b4890c2684ac0f7aec16310e1451cd8a3157a4901d5838011a4a081b3a4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
