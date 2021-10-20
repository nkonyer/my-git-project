README.md:
	echo "# Nick's Peer-Graded Assignment: Bash, Make, Git, and GitHub #" > README.md
	echo " " >> README.md
	echo "Date and time which **make** was run :" >> README.md
	date >> README.md
	echo " " >> README.md
	echo "Number of lines of code contained in guessinggame.sh :" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
