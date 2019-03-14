#!/usr/bin/env bash

limitup=100
user_try=0
nbtentative=0
aleatoire=$(( $$ % $limitup ))      #pid script % 100
while [ $user_try -ne $aleatoire ] ; do
  echo -n "Devinez? " ; read user_try
  if [ "$user_try" -lt $aleatoire ] ; then
    echo "... c'est plus grand!"
  elif [ "$user_try" -gt $aleatoire ] ; then
    echo "... c'est plus petit!"
  fi
  nbtentative=$(( $nbtentative + 1 ))
 done

 echo "Bravo!! Vous avez deviné $aleatoire en $nbtentative coups."

 exit 0
