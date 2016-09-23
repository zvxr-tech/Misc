# Makefile to init a git project with a fixed username and email
# provided a project name.
#
# Usage: make <project_name>
#
# Free to use, modify distribute. No warranty implied or given.
# 2015 - Mike Clark <clark.in.canada@gmail.com>
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# Replace with your username/email
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
USERNAME=USERNAME
USEREMAIL=EMAIL_ADDRESS

%:  
	echo "Initializing project $@"
	mkdir $@
	git -C "$@" init 
	git -C "$@" config user.name "$(USERNAME)"
	git -C "$@" config user.email "$(USEREMAIL)"
	touch "$@/README.md"

