from random import choice
import string

def generate_password(length: int) -> str:
    characters: str = string.ascii_letters + string.digits + string.punctuation
    password: str = ''.join(choice(characters) for i in range(length))
    return password

if __name__ == '__main__':
    length: int = int(input("Enter the length of the password: "))
    password: str = generate_password(length)
    print(f"Your password is: {password}")
