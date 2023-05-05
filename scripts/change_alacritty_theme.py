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

match theme.lower():
    case 'cat':
        new = 'catppuccin'
    case 'nord':
        new = 'nord'
    case 'poi':
        new = 'poimandres'
    case 'storm':
        new = 'poimandres-storm'
    case 'kana':
        new = 'kanagawa'
    case 'solar':
        new = 'solarized'
    case 'light':
        new = 'solarized_light'

#if theme.lower() == 'cat' or theme.lower() == 'catppuccin':
#    new = 'catppuccin'
#elif theme.lower() == 'nord':
#    new = 'nord'
#elif theme.lower() == 'poimandres':
#    new = 'poimandres'
#elif theme.lower() == 'storm':
#    new = 'poimandres-storm'

fdata = fdata.replace(to_replace, new)
f.close()

f = open('/home/kunheeha/.config/alacritty/alacritty.yml', 'w')
f.write(fdata)
f.close()
