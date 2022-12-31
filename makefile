# Makefile for Unix Work Bench Final Project



README.md: guessinggame.sh
	echo "# The Unix Workbech Week 4 Project: Bash, Make Git and Github" > README.md
	$(eval date_created := $(shell TZ=America/Los_Angeles date))
	echo "File Created: $(date_created)" >> README.md
	
	$(eval number_files := $(shell wc -l ./guessinggame.sh | egrep -o "[0-9]+"))
	echo "Number of lines in guessinggame.sh: $(number_files)" >> README.md

clean:
	rm README.md
