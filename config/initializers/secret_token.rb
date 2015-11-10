
# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

# Although this is not needed for an api-only application, rails4
# requires secret_key_base or secret_token to be defined, otherwise an
# error is raised.
# Using secret_token for rails3 compatibility. Change to secret_key_base
# to avoid deprecation warning.
# Can be safely removed in a rails3 api-only application.
StorWeAppApi::Application.config.secret_token ='d143c077a5023101419b762c0caeab05dcdd11698b8bd8e65e4c389cdfa321e93813dee5bd797a1aec297d263bb93f358c22fdba9ba54dbf8295b3bdd5b6ef0f'
