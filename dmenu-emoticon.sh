#!/bin/bash
# This files comes from:
# https://github.com/porras/dmenu-emoji
# forked to:
# https://github.com/deadvey/dmenu-emoticon.sh
# If this file includes emojis below "__DATA__" it is generated.
# This file was generated: 2022-04-21 12:38:03+00:00

set -e

case "$1" in
  "list")
    data=$(sed '0,/^__DATA__$/d' "$0")
    echo "$data"
    ;;
  "copy")
    input=$(tee)
    if [ ! -z "$input" ]; then
      emoji=${input: 23}
      echo -n "$emoticon" | xclip -selection c
      command -v notify-send > /dev/null && notify-send -t 200 "$emoticon copied!"
    fi
    ;;
  "")
    bash $0 list | dmenu -p 'Emoticon: ' | bash $0 copy
    ;;
esac

exit

# make sure they all start at the same point (column 23)
#emoticonname          emoticon

__DATA__
happy                  :)
sad                    :(
angry                  >:(
meh 1                  :|
meh 2                  ·_·
awkward                :/
tounge 1               :P
tounge 2               :p
shrug 1                ¯\_(ツ)_/¯ 
shrug 2                ¯\(°_o)/¯
evil                   >:)
surprised 1            0_0
surprised 2            o_o
surprised 3            O_O
surprised 4            •_•
surprised 5            :o
surprised 6            :O
odd 1                  o_O
odd 2                  O_o
japanese tsu smile     ツ
fighting               (ง︡'-'︠)ง
flexing                ᕙ(`▿´)ᕗ
preparing punch        ᕙ( ︡'︡益'︠)ง
uwu                    uwu
owo                    owo
lenn happy             ( ͡❛ ͜ʖ ͡❛)
wink                   ;)
tear | cry             :'(
weeping | crying       ;_;
lenn shrug             ¯\_( ͡❛ ͜ʖ ͡❛)_/¯
not fine | seriously   (¬_¬)
cool | sunglasses      B)
thumbs up 1            (^_^)b
thumbs up 2            (-_-)b
double thumbs up 1     (b^_^)b
double thumbs up 2     (b-_-)b
table flip             (╯°□°）╯︵ ┻━┻
stressed               囧
dancing                ᕕ( ᐛ )ᕗ
thinking               ´-`）.｡oO( ... )
Happy face             (^_^)
Smiling face           (^ω^)
Grinning face          (＾◡＾)
Smiling heart eyes     (♥ω♥*)
Smiling face           (ﾟｰﾟ)
Winking face           (^_-)
Blushing face          (/ω＼)
Smiling sunglasses     (⌒_⌒;)
Relieved face          (´｡• ω •｡`)
Smiling tears of joy   (ಥ◡ಥ)
Smiling tongue out     (¬‿¬)
Smiling with sweat     (・∀・)
Angry face             (ﾟДﾟ)
Crying face            (;´༎ຶД༎ຶ`)
Surprised face         (ﾟﾛﾟ)
Sleeping face          (´〜`)
Confused face          (・_・ヾ
Bear face              ʕ•ᴥ•ʔ
Cat face               (≧◡≦)
Dog face               (•‿•)
Bunny face             ( •ॢ◡-ॢ)-♡
Fish face              ><(((*>
Penguin face           <(^_^)>
Bird face              ('>' )>
Panda face             (•ω•)
facepalm               (◞‸ლ)
cringe                 ( >︹<)
bat 1                  ⎛⎝(•ⱅ•)⎠⎞
bat 2                  ⎛⎝•_•⎠⎞








