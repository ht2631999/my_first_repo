#just started
make readme.md
echo "readme.md created"
echo ""
function readin {

	n=$(ls|wc -l)
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

while [[ op -ne 1 ]]
do
	echo "please guess the number of files in directory"
	read inp
	op=$(readin $inp)
#	echo $op
	if [[ op -eq 1 ]]
	then
		echo "Congratulations, your guess is correct"
	elif [[ op -eq 0 ]]
	then
		echo "Too small guess"
	else 
		echo "too large guess"
	fi
done

rm readme.md	


