#function for comparing user input value to no. of directory content
n=$(ls -A|wc -l)
function readin {

	if [[ $1 -eq $n ]]
	then
		echo 1
	elif [[ $1 -lt $n ]]
	then
		echo 0
	else 
		echo 2
	fi
}


# loop for getting user input until correct guess
while [[ op -ne 1 ]]
do
	echo "please guess the number of files in directory"
	read inp
	if [[ ! $inp =~ ^[1-9]+$ ]]
	then
		echo "Please Enter number greater than 0"
	else
		op=$(readin $inp)
		if [[ op -eq 1 ]]
		then
			echo "Congratulations, your guess is correct"
		elif [[ op -eq 0 ]]
		then
			echo "Too small guess"
		else 
			echo "too large guess"
		fi
	fi
done



#THANK YOU
