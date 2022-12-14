# shellcheck shell=bash
about-plugin 'search history using the substring already entered'

# Load after the history plugin
# BASH_IT_LOAD_PRIORITY: 375

# enter a few characters and press UpArrow/DownArrow
# to search backwards/forwards through the history
if [[ ${SHELLOPTS} =~ (vi|emacs) ]]; then
	bind '"\e[A":history-substring-search-backward'
	bind '"\e[B":history-substring-search-forward'
fi
