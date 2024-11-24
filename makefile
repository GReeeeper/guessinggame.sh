# Makefile for guessing game project

# Variables
SHELL := /bin/bash
SCRIPT = guessinggame.sh
README = README.md

# Target to generate README.md
all: $(README)

$(README): $(SCRIPT)
	@echo "# Guessing Game" > $(README)
	@echo "" >> $(README)
	@echo "## Project Information" >> $(README)
	@echo "Date and Time: $(shell date)" >> $(README)
	@echo "Number of lines of code in $(SCRIPT): $(shell wc -l < $(SCRIPT))" >> $(README)
	@echo "" >> $(README)
	@echo "## Description" >> $(README)
	@echo "This project is a guessing game where the user guesses the number of files in the current directory." >> $(README)

# Clean target
clean:
	rm -f $(README)
