#!/bin/bash

$decorate() {
   eval "
     _inner_$(typeset -f "$1")
     $1"'() {
       echo >&2 "Calling function '"$1"' with $# arguments"
       _inner_'"$1"' "$@"
       local ret=$?
       echo >&2 "Function '"$1"' returned with exit status $ret"
       return "$ret"
     }'
}
