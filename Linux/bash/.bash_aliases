#
#     ___       __       __       ___           _______. _______      _______.
#    /   \     |  |     |  |     /   \         /       ||   ____|    /       |
#   /  ^  \    |  |     |  |    /  ^  \       |   (----`|  |__      |   (----`
#  /  /_\  \   |  |     |  |   /  /_\  \       \   \    |   __|      \   \    
# /  _____  \  |  `----.|  |  /  _____  \  .----)   |   |  |____ .----)   |   
#/__/     \__\ |_______||__| /__/     \__\ |_______/    |_______||_______/    
#


# make terminal better
# -----------------------------------------------------------
alias l='ls -A'						# list all files except '.' and '..'
alias ll='ls -1lhHFA'				# list all files in long format on newlines with symbolic links
alias ~='cd ~'						# go to HOME directory
alias ..='cd ..'					# go back 1 directory level
alias ...='cd ../../'				# go back 2 directory levels
alias .3='cd ../../../'				# go back 3 directory levels
alias .4='cd ../../../../'			# go back 4 directory levels
alias .5='cd ../../../../../'		# go back 5 directory levels
alias .6='cd ../../../../../../'	# go back 6 directory levels
alias f='open -a Files ./'			# open current directory in Files
alias c='clear'						# clear terminal screen
alias where='sudo find / -name'		# look through entire directory for instances of name variable

# change default options for common commands
# -----------------------------------------------------------
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias df='df -h'
alias du='du -h'
alias mkdir='mkdir -p'
