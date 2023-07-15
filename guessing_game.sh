echo "Welcome to the Guessing Game!"
echo "Instructions: Guess the number of files in the current directory."
echo "Good luck!"

function ask {
  echo "How many files are in the current directory?"
  read guess 
  # The command ls -l | wc -l gives one more than the number of files.
  number_of_files=$(ls -1 | wc -l)
}

ask
while [[ $guess -ne $number_of_files ]]
do 
  if [[ $guess -ge $number_of_files ]]; then
    echo "Try a smaller number."
  else
    echo "Try a larger number." 
  fi
  ask
done

echo "Congratulations! You guessed it right!!!"
echo "The number of files in the current directory is: $number_of_files"
echo "Here is the list of files:"
echo "--------------"
ls
