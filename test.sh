#!/bin/bash
# testing and control with if, [ and [[, and/or

# NUM_REQUIRED_ARGS=2

# Do we have at least two arguments?
if [ $# -;t NUM_REQUIRED_ARGS ]; then
  echo "Not enough arguments. Call this script with ./{$0} <name> <number>"
fi

## helpers
# && and
# || or

## in your terminal
echo "hi." || echo "This won't happen."
$(ls nonexistentfile) || echo "This happens if the first thing fails"
echo $(pwd) && echo "This ALSO happens"

## Strings
str1="a"
str2="b"

# Equality (= and !=) (ASCII comparison)
if [ "$str1" = "$str2" ]; then
  echo "${str1} is equal to ${str2}!"
fi

if [ "$str1" != "$str2" ]; then
  echo "${str1} is not equal to ${str2}!"
fi

# Null (-n) or Zero length (-z)
notnully="this is something (not nothing)"
nully=""

if [ -n "$notnully" ]; then
  echo "This is not at all nully..."
fi

if [ -z "$nully" ]; then
  echo "null/zeroooo (length)"
fi

# Integers
int1=1
int2=7

# equal, not equal
if [ $int1 -eq  $int2 ]; then
  echo "${int1} is equal to ${int2}."
fi

if [ $int1 -ne $int2 ]; then
  echo "${int1} is NOT equal to ${int2}."
fi

# greater than, less than +equal
# -gt -lt -ge -le
if [ $int1 -gt $int2 ]; then
  echo "${int1} is equal to ${int2}."
fi

if [ $int1 -le $int2 ]; then
  echo "${int1} is less than or equal to ${int2}."
fi

# string comparison operators can be used with double parentheses
if (( $int1 == $int2 )); then
  echo "${int1} is equal to ${int2}."
fi

# (())
# ==    Is Equal To
# !=    Is Not Equal To
# <     Is Less Than
# <=    Is Less Than OR Equal To
# >     Is Greater Than
# >=    Is Greater Than Or Equal To