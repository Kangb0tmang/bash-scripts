#!/bin/bash

NAME=$1
JUMP_SHOT="In your face!"
FLOP="*flops*"
HEAD_SHAKE="*slow head shake"

# IDE completion
if [ "$NAME" = "Kawhi" ]; then
  echo $JUMP_SHOT
elif [ "$NAME" = "Harden" ]; then
  echo $FLOP
else
  echo $HEAD_SHAKE
fi

# tests are required

# if your name is Kawhi
  # jump shot
# if your name is Harden
  # flop
# else
  # shake head slowly