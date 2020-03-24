#!/bin/bash
# a life simulator
# call with ./$SCRIPTNAME <name> <number>

NUM_REQUIRED_ARGS=2
num_args=$#

# Do we have at least two arguments?
if [ $num_args -lt $NUM_REQUIRED_ARGS ]; then
  echo "Not enough arguments. Call this script with ${0} <name> <number>"
  exit 1
fi

# Set variables, using argumnets
name=$1
number=$2
echo "Your first two arguments were: $1 $2"

# for loops; iteration, string interpolation
echo "You ran this program with ${num_args} arguments. Here they are:"
for arg in "$@"; do
  echo "$arg"
done

# two ways of defining a function
spaced() {
  # parameters are not named; they are positional
  echo
  echo "################"
  echo "$1"
  echo "################"
  echo
}

# define a function
function javatest() {
  # testing and conditionals
  if [[ $number -eq 99 ]]; then
    spaced "You win! You guessed the secret number!"
  elif (( $number < 10 )); then
    spaced "You're a courageous one. I like that about you. Unfortunately, you must perish"

    # set a variable interactively
    echo "Hi ${name}, to avert a horrible death, please enter the password:"
    read password

    if [[ "$password" != "java" ]]; then
      spaced "Well, at least you're not a Java Programming sympathizer. You may vacate the premises"
    else
      spaced "You have chosen...ah never mind, get out of here and get off my lawn!"
    fi
  fi
}

# call a function
javatest $number
exit 0