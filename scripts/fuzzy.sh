#!/bin/bash

export FZF_DEFAULT_COMMAND="find \! \( -path '*/.git' -prune \) -printf '%P\n'"

function open(){
  case $(file --mime-type "$1" -b) in
    text/*|application/json) wl-copy "$1" & nvim "$1"
    ;;
    audio/*) mpv "$1"
    ;;
    *) detach xdg-open "$1"
    ;;
  esac
}

FILE=$(fzf)
open $FILE
