import binascii 
import codecs
import math
import base64

def numstuff():
    print('Enter Decimal Value:')
    x = input()
    x = int(x)
    print('Binary:', bin(x).replace("0b","" ))
    hex_string = hex(x)[2:] 
    print('Hexadecimal:', hex_string)
    ascii_string = ''.join([chr(int(hex_string[i:i+2], 16)) for i in range(0, len(hex_string), 2)])
    print('ASCII:', ascii_string)
    print('ASCII Sum:', sum(map(ord, ascii_string)))
    
def rot_alpha(n):
    from string import ascii_lowercase as lc, ascii_uppercase as uc
    lookup = str.maketrans(lc + uc, lc[n:] + lc[:n] + uc[n:] + uc[:n])
    return lambda s: s.translate(lookup)

# Main
selection = input("Please Select:")
if selection == '1':
    numstuff()
elif selection == '2':
    string_in = input('Enter String... \n')
    shift_string = input('Enter Caesar Number \n')
    shift_string = int(shift_string)
    print(rot_alpha(shift_string)(string_in))
elif selection == '3':
    first_xor = input('Enter 1st Hex String \n')
    first_xor = int(first_xor, 16)
    second_xor = input('Enter 2nd Hex String \n')
    second_xor = int(second_xor, 16)
    xor_out = hex(first_xor ^ second_xor)
    print(xor_out)
elif selection == '4':
    y = str(input('Enter ASCII characters: \n'))
    b = base64.b64encode(bytes(y,'utf-8'))
    b64_str = b.decode('utf-8') 
    print(b64_str)
    