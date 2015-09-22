source_dir="$(pwd)/lib"

source_file() {
  source "$source_dir/$1" > /dev/null
}

receiver=''

assert_array_equality() {
  local expected=("${!1}")
  if [ ${#receiver[*]} != ${#expected[*]} ];
  then
    [ "1" = "0" ]
  else
    for i in ${!receiver[*]}; do
      if [ "${receiver[$i]}" != "${expected[$i]}" ]
      then
        [ "1" = "0" ]
      else
        [ "1" = "1" ]
      fi
    done
  fi
}

