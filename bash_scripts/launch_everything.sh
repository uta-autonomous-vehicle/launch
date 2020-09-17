#!/bin/bash

if [ $1 == "1" ]; then
  . racecar.sh \
  & . uta_racecar.sh
fi

if [ $1 == "2" ]; then
  . racecar.sh
fi

if [ $1 == "3" ]; then
  . uta_racecar.sh
fi
