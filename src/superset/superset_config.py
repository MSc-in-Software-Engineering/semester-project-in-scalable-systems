import secrets
import string

def generate_secret_key(length):
    characters = string.ascii_letters + string.digits
    return ''.join(secrets.choice(characters) for _ in range(length))

secret_key = generate_secret_key(42)
