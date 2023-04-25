import sys
import re

if len(sys.argv) < 2:
    theme = input('new theme: ')
else:
    theme = str(sys.argv[1])

f = open('/home/kunheeha/.config/nvim/after/plugin/colours.lua', 'r')

matcher = re.compile(r'''
                     SetColour\('(.+)'\)
                     ''', re.VERBOSE)

fdata = f.read()
match = matcher.search(fdata)
to_replace = match.group(0)

match theme.lower():
    case 'cat':
        new = "SetColour('catppuccin')"
    case 'nord':
        new = "SetColour('nord')"
    case 'glacier':
        new = "SetColour('glacier')"
    case 'kana':
        new = "SetColour('kanagawa')"
    case 'solar':
        new = "SetColour('solarized')"

fdata = fdata.replace(to_replace, new)
f.close()

f = open('/home/kunheeha/.config/nvim/after/plugin/colours.lua', 'w')
f.write(fdata)
f.close()
