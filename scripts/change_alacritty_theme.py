import sys
import re

if len(sys.argv) < 2:
    theme = input('new theme: ')
else:
    theme = str(sys.argv[1])

f = open('/home/kunheeha/.config/alacritty/alacritty.yml', 'r')

matcher = re.compile(r'''
                    import:\n\s+-\s~\/\.config\/alacritty\/(.+)\.yml
                     ''', re.VERBOSE)

fdata = f.read()
match = matcher.search(fdata)
to_replace = match.group(1)

if theme.lower() == 'cat' or theme.lower() == 'catppuccin':
    new = 'catppuccin'
elif theme.lower() == 'nord':
    new = 'nord'

fdata = fdata.replace(to_replace, new)
f.close()

f = open('/home/kunheeha/.config/alacritty/alacritty.yml', 'w')
f.write(fdata)
f.close()
