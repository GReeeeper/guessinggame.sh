#!/bin/bash

# Function to count files and prompt user for guesses
guessing_game() {
    local number_of_files=$(ls -1 | wc -l)
    local guess=-1

    echo "Guess how many files are in the current directory:"

    while [[ $guess -ne $number_of_files ]]; do
        read guess
        if [[ $guess -lt $number_of_files ]]; then
            echo "Your guess is too low. Try again:"
        elif [[ $guess -gt $number_of_files ]]; then
            echo "Your guess is too high. Try again:"
        else
            echo "Congratulations! You guessed the correct number of files: $number_of_files"
        fi
    done
}

# Start the game
guessing_game
