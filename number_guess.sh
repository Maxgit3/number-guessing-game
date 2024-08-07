#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"


# random number for guess 
MAX=1000
MIN=1
RANDOM_NUMBER=$(($RANDOM%($MAX-$MIN+1)+$MIN))

COUNT=0

echo $RANDOM_NUMBER

echo "Enter your username:"

read USER_NAME

RESULT=$($PSQL "SELECT * From player WHERE username='$USER_NAME'")
USERNAME=""
GAMES_PLAYED=0
BEST_GAME=0

if [[ -z $RESULT ]]
  then
    INSERT=$($PSQL "INSERT INTO player(username, games_played, best_game) VALUES('$USER_NAME', 0, 1000)")
    echo "Welcome, $USER_NAME! It looks like this is your first time here."
  else
    USERNAME=$(echo "$RESULT" | awk -F '|' '{print $1}')
    GAMES_PLAYED=$(echo "$RESULT" | awk -F '|' '{print $2}')
    BEST_GAME=$(echo "$RESULT" | awk -F '|' '{print $3}')
    echo -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
echo -e "\nGuess the secret number between 1 and 1000:"

read GUESS



function guessing_game() {
  if [[ $GUESS =~ ^[a-zA-Z]+$ ]]
    then
      COUNT=$(( COUNT + 1 ))
      UPDATE=$($PSQL "UPDATE player SET best_game=$COUNT, games_played=$GAMES_PLAYED WHERE username='$USERNAME'")
      echo "That is not an integer, guess again:"
      read GUESS
      guessing_game 
  elif [[ $GUESS -gt $RANDOM_NUMBER && $GUESS =~ ^[0-9]+$ ]]
    then
      COUNT=$(( COUNT + 1))
      echo "It's lower than that, guess again:"
      read GUESS
      guessing_game
  elif [[ $GUESS -lt $RANDOM_NUMBER  && $GUESS =~ ^[0-9]+$ ]]
    then
      COUNT=$(( COUNT + 1))
      echo "It's higher than that, guess again:"
      read GUESS
      guessing_game
  else
      COUNT=$(( COUNT + 1 ))
      echo "You guessed it in $COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"

      # USERNAME=$(echo "$RESULT" | awk -F '|' '{print $1}')
      # GAMES_PLAYED=$(echo "$RESULT" | awk -F '|' '{print $2}')
      # BEST_GAME=$(echo "$RESULT" | awk -F '|' '{print $3}')
      # echo $BEST_GAME
      # echo $COUNT
      RESULT=$($PSQL "SELECT * From player WHERE username='$USER_NAME'")
      USERNAME=$(echo "$RESULT" | awk -F '|' '{print $1}')
      GAMES_PLAYED=$(echo "$RESULT" | awk -F '|' '{print $2}')
      BEST_GAME=$(echo "$RESULT" | awk -F '|' '{print $3}')
      GAMES_PLAYED=$(( GAMES_PLAYED + 1 ))
      if [[ $BEST_GAME -gt $COUNT ]]
        then
          UPDATE=$($PSQL "UPDATE player SET best_game=$COUNT, games_played=$GAMES_PLAYED WHERE username='$USERNAME'")
          exit
      else
        UPDATE=$($PSQL "UPDATE player SET games_played=$GAMES_PLAYED WHERE username='$USERNAME'") 
        exit
      fi
      
  fi
  
}

guessing_game
