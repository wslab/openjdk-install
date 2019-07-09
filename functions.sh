# checks if the executable is in the path
# returns 0 if yes, 1 if no
function executable_in_path() {
    local exe=$1
    local found
    hash $exe > /dev/null 2>&1
    found=$?
    if [ $found -eq 0 ]; then
      return 0
    else
      return 1
    fi
}

# checks if the script is running as root
# return 0 if yes, 1 if no
function i_am_root() {
    local result=$(id -u)
    if [ $result -eq 0 ]; then
      return 0
    else
      return 1
    fi
}

executable_in_path asdfasdf
echo result $?
executable_in_path ls
echo result $?
i_am_root
echo root: $?

