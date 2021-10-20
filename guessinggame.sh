how_many_files=$(ls -1 | wc -l)
user_input=""

echo "Please guess how many files are in the current directory"

while  [[ ! $how_many_files -eq $user_input ]]
do
	read user_input
	if [[ $user_input =~ "easter" || $user_input =~ "Easter" ]]
	then
		echo "egg."
		user_input=""
	elif [[ $user_input =~ "hello" || $user_input =~ "hi" || $user_input =~ "Hello" ]]
	then
		echo "hey."
		user_input=""
	elif [[ ! $user_input =~ ^[0-9]*$ ]]
	then
		echo "Invalid number! Please enter a positive integer."
		user_input=""
	elif [[ ${#user_input} -gt 10 ]]
	then
		echo "You guessed WAAAYYY too high. Try a MUCH lower number!"
	else
		if [[ $how_many_files -ne $user_input ]]
		then
			if [[ $how_many_files -gt $user_input ]]
			then
				echo "You guessed too low. Try a higher number!"
			else
				echo "You guessed too high. Try a lower number!"
			fi
		fi
	fi
done

echo "Congratulations, you guessed the right number!"
