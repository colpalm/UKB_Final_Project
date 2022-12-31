# Makefile for Unix Work Bench Final Project

define NEWLINE

endef

README.md: guessinggame.sh
	# Variables
	$(eval number_files := $(shell wc -l ./guessinggame.sh | egrep -o "[0-9]+"))
	$(eval date_created := $(shell TZ=America/Los_Angeles date))
	
	echo "# The Unix Workbech Week 4 Project: Bash, Make Git and Github" > README.md
	echo "File Created: $(date_created)" >> README.md
	echo $(NEWLINE) >> README.md
	echo "Number of lines in guessinggame.sh: $(number_files)" >> README.md

clean:
	rm README.md
