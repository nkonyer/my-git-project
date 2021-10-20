how_many_files=$(ls -1 | wc -l)
user_input=""

function easter_eggs {
	if [[ $1 =~ "easter" || $1 =~ "Easter" ]]
	then
		echo "	egg!"
	elif [[ $1 =~ "Hello" || $1 =~ "hello" || $1 =~ "Hi" || $1 =~ "hi" ]]
	then
		echo "	Howdy!"
	fi
}

echo "Please guess how many files are in the current directory"

while  [[ ! $how_many_files -eq $user_input ]]
do
	read user_input
	easter_eggs $user_input
	if [[ ! $user_input =~ ^[0-9]*$ ]]
	then
		echo "Invalid entry! Please enter a positive integer."
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
