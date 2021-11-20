#!/usr/bin/bash
<<'EOF'
l=()
for x in "~/.config/i3"/*; do
    if [[ $x =~ .*\.jpg$ ]] ; then
        l+=("$x")
    fi;
done;

if [[ "${#l[@]}" == "0" ]] ; then
    exit
fi

wall="${l[RANDOM%${#l[@]}]}"

feh --bg-fill "$wall"
EOF

<<<<<<< HEAD:i3/wallpaper.sh
feh --bg-fill --randomize ~/.config/i3/wall/*.jpg
=======
#feh --bg-fill --randomize ~/wall/*.jpg
>>>>>>> ~/.config/i3/wallpaper.sh
