set -x
set -o
set -e
set -o nounset

cabal run > /dev/null &
sleep 5
maim -i $(xdotool getactivewindow) $1
