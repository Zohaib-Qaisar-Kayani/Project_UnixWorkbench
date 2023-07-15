README.md: guessing_game.sh
	echo "## The Unix Workbench Project" > README.md
	echo "**Title:** GuessingGame" >> README.md
	echo "**Creation date:** $(date '+%d/%m/%Y')" >> README.md
	echo "**Creation Time:** $(date '+%H:%M:%S')" >> README.md
	echo "**Number of lines in guessing_game.sh:**" >> README.md
	cat guessing_game.sh | wc -l >> README.md
