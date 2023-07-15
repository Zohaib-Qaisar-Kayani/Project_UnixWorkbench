echo "Welcome to Guessing game!!!"
echo "Instructions: You need to guess how many files are in the current directory until you guess the correct answer."
echo "Goog luck!!!"
 
function ask {
  echo "How many files are in the current directory?"
  read guess 
## The Command ls-l | wc -l gives one more than the number of files.
  number_of_files=$(ls -1 | wc -l)
}

ask
while [[ $guess -ne $number_of_files ]]
do 
  if [[ $guess -ge $number_of_files ]] 
  then
    echo "Try a smaller number."
  else [[ $guess -le $number_of_files ]]
    echo "Try a bigger number." 
  fi
  ask
done

echo "Congratulation you guess right!!!"
echo "There are $number_of_files files in the current directory, which are: "
echo "--------------" && ls
