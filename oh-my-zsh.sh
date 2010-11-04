# Initializes Oh My Zsh

# add a function path
fpath=($ZSH/functions $fpath)

# add rvm completion if it exists.
if [ -d "$HOME/.rvm/scripts/zsh/Completion" ]
then
  fpath=($HOME/.rvm/scripts/zsh/Completion $fpath)
fi

# Load all of the config files in ~/oh-my-zsh that end in .zsh
# TIP: Add files you don't want in git to .gitignore
for config_file ($ZSH/lib/*.zsh) source $config_file

# Load all of your custom configurations from custom/
for config_file ($ZSH/custom/*.zsh) source $config_file

# Load all of the plugins that were defined in ~/.zshrc
plugin=${plugin:=()}
for plugin ($plugins) source $ZSH/plugins/$plugin/$plugin.plugin.zsh

# Check for updates on initial load...
if [ "$DISABLE_AUTO_UPDATE" = "true" ]
then
  return
else
  /usr/bin/env zsh $ZSH/tools/check_for_upgrade.sh
fi
