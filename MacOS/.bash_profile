#   _______ .______       _______  _______ .___________. __  .__   __.   _______      _______.
#  /  _____||   _  \     |   ____||   ____||           ||  | |  \ |  |  /  _____|    /       |
# |  |  __  |  |_)  |    |  |__   |  |__   `---|  |----`|  | |   \|  | |  |  __     |   (----`
# |  | |_ | |      /     |   __|  |   __|      |  |     |  | |  . `  | |  | |_ |     \   \    
# |  |__| | |  |\  \----.|  |____ |  |____     |  |     |  | |  |\   | |  |__| | .----)   |   
#  \______| | _| `._____||_______||_______|    |__|     |__| |__| \__|  \______| |_______/    
 
echo ""
echo -n "Welcome, "; whoami
echo ""
echo -n "The current time is "; date +'%_I:%M:%S'
gcal .
echo ""                                                                                         

# if running bash
if [ -n "$BASH_VERSION" ]; then
	#include .bashrc if it exists
	if [ -f ~/.bashrc ]; then
		. ~/.bashrc
	fi
fi

# set PATH so it includes user's private bin directories
# -----------------------------------------------------
export PATH="~/bin:$PATH"

# added by Anaconda3 5.2.0 installer
export PATH="/anaconda3/bin:$PATH"
