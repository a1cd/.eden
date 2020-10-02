"""Randomised One-Time Pad encryption and decryption functions in Python."""

import random
from random import choice, shuffle
import itertools

good_file = open("Working.txt", "w+")
bad_file = open("Bad.txt", "w+")

charset = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

def shuffle_word(word):
    word = list(word)
    shuffle(word)
    return ''.join(word)

def charCombo():
    listsofchars = []
    lenOfCharset= len(charset)
    for i in range(lenOfCharset):
        listsofchars.append(list(charset))
    combination = [p for p in itertools.product(*listsofchars)]
    print("done")
    return(combination)


def main():
    message = 'TS BR'
    twoletterwords = ['of', 'to', 'in', 'it', 'is', 'be', 'as', 'at', 'so', 'we', 'he', 'hi', 'by', 'or', 'on', 'do', 'if', 'me', 'my', 'up', 'an', 'go', 'no', 'us', 'am']
    for i in charCombo():
        key = shuffle_word(charset)
        decrypted = decrypt(message, key)
        if check2word(twoletterwords, decrypted.lower()):
            good_file("word:" + str(decrypted) + "key:" + str(key))
            print("word:" + str(decrypted) + "key:" + str(key))
        else:
            return False
                        



def encrypt(plaintext):
    """Encrypt plaintext value.

    Keyword arguments:
    plaintext -- the plaintext value to encrypt.
    """
    code = "".join(random.sample(charset, len(charset)))
    result = ""

    for c in plaintext.upper():
        if c == ' ':
            result += ' '
        elif c not in code:
            continue
        else:
            result += code[charset.find(c)]

    return code, result


def decrypt(code, secret):
    """Decrypt secret value.

    Keyword arguments:
    code -- the one-time pad used when the secret value was encrypted.
    secret -- the value to be decrypted.
    """
    result = ""

    for SecretCharacter in secret.upper():
        if SecretCharacter == ' ':
            result += ' '
        if SecretCharacter not in code.upper():
            continue
        else:
            result += charset[code.find(SecretCharacter)]

    return result
def check2word(twoletterwords, decrypted):
    for twoletterword0 in twoletterwords:
        if decrypted.split(" ")[0]==twoletterword0:
            for twoletterword1 in twoletterwords:
                if decrypted.split(" ")[1]==twoletterword1:
                    return True
                else:
                    return False
        else:
            return False

if __name__ == "__main__":
    main()
