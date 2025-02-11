import sys
import re

if len(sys.argv) < 2:
    new = input('new opacity: ')
else:
    new = float(sys.argv[1])

f = open('/home/kunheeha/.config/kitty/kitty.conf', 'r')

matcher = re.compile(r'''
                     background_opacity\s\d\.?\d+
                     ''', re.VERBOSE)
fdata = f.read()
match = matcher.search(fdata)
to_replace = match.group(0).strip()
fdata = fdata.replace(to_replace, f'opacity: {new}')
f.close()

f = open('/home/kunheeha/.config/kitty/kitty.conf', 'w')
f.write(fdata)
f.close()
