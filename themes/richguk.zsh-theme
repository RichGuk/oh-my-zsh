PROMPT='%{$fg[magenta]%}%m%{$reset_color%} %{$fg[yellow]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info)%{$reset_color%}: '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}(%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[yellow]%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
