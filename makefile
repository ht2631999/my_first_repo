
readme.md:
	touch readme.md
	echo "# Guessing Game">>readme.md
	echo " "
	date +%c >> readme.md
	echo " ">>readme.md
	wc -l guessinggame.sh >> readme.md

