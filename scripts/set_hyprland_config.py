import sys
import re

chassis = sys.argv[1]

def check_macbook_conf(file):
    matcher = re.compile(r'''
                         \nsource\s=\s~\/\.config\/hypr\/macbook\.conf
                         ''', re.VERBOSE)
    confdata = file.read()
    match = matcher.search(confdata)
    return match, confdata


f = open('/home/kunheeha/.config/hypr/hyprland.conf', 'r')
match, confdata = check_macbook_conf(f)
f.close()

if chassis == 'desktop':

    if match:
        to_remove = match.group(0).strip()
        confdata = confdata.replace(to_remove, '')
        f = open('/home/kunheeha/.config/hypr/hyprland.conf', 'w')
        f.write(confdata)
        f.close()

elif chassis == 'laptop':

    if not match:
        f = open('/home/kunheeha/.config/hypr/hyprland.conf', 'a')
        f.write('source = ~/.config/hypr/macbook.conf')
        f.close()

else:
    print("Check hostnamectl output")
