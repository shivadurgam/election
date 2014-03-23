# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Election::Application.config.secret_key_base = '6f1b1670a2d868c71d8672e5bde9770e47595e6ac323b0895fe3b9afd979505abe9da921f6e5e9155a50da18c0e30f66587d329c3cc1546e320a9fe5f347b240'
