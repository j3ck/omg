module_color=1

# Color constants
ansi_black='\033[30m'
ansi_black_bold='\033[0;30;1m'
ansi_red='\033[31m'
ansi_red_bold='\033[0;31;1m'
ansi_green='\033[32m'
ansi_green_bold='\033[0;32;1m'
ansi_yellow='\033[33m'
ansi_yellow_bold='\033[0;33;1m'
ansi_blue='\033[34m'
ansi_blue_bold='\033[0;34;1m'
ansi_magenta='\033[35m'
ansi_magenta_bold='\033[0;35;1m'
ansi_cyan='\033[36m'
ansi_cyan_bold='\033[0;36;1m'
ansi_white='\033[37m'
ansi_white_bold='\033[0;37;1m'
ansi_reset='\033[0m'

# Reset text attributes to normal without clearing screen.
alias Reset="tput sgr0"

# Color-echo.
# Argument $1 = color (defaults to white, if not specified)
# Other arguments will be passed directly to echo
function b.color.cecho {
  local opt=
  if [ "$1" == "-n" ]; then
    opt=$1
    shift
  fi

  local color=${1:-$ansi_white}
  shift

  echo -ne $color
  echo -n "$@"
  echo -e $opt "$ansi_reset"
}

function b.color.cecho_warning {
  b.color.cecho -n $ansi_yellow 'WARNING: '
}

function b.color.cecho_error {
  b.color.cecho -n $ansi_red 'ERROR: '
}
