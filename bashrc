# Vi bindings
set -o vi

# Editor
export EDITOR=vim
export VISUAL=vim

# Ignore history duplicates
export HISTCONTROL=ignoredups:erasedups

# Append to history instead of overwriting it
shopt -s histappend

# Increase history size
export HISTSIZE=100000
export HISTFILESIZE=100000

# Save and reload history after each command
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Silence bash shell warning on macOS
export BASH_SILENCE_DEPRECATION_WARNING=1
