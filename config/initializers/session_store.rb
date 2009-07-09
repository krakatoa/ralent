# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ralent_session',
  :secret      => 'b4d4b866788fdf1d6f167aa9a88c64be38b1614fae1ea9753b916ca651d32604de974241e423490ce60ca22ac73dfcea2fc849afa96eed7de13327105b76b3bb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
