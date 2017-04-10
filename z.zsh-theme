# Basic, beautiful and simple theme for oh-my-zsh bash.
# It is recommended to use with font Inconsolata or Monaco.
# https://github.com/felipesousa/Z-theme-zsh
# Mar 2016

# VCS
YS_VCS_PROMPT_PREFIX1=" %{$fg[black]%}on%{$reset_color%} "
YS_VCS_PROMPT_PREFIX2=":%{$fg[cyan]%}"
YS_VCS_PROMPT_SUFFIX="%{$reset_color%}"

# Git
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="${YS_VCS_PROMPT_PREFIX1}git${YS_VCS_PROMPT_PREFIX2}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$YS_VCS_PROMPT_SUFFIX"
ZSH_THEME_GIT_PROMPT_DIRTY="$YS_VCS_PROMPT_DIRTY"
ZSH_THEME_GIT_PROMPT_CLEAN="$YS_VCS_PROMPT_CLEAN"

# Prompt format: \n # USER in DIRECTORY on BRANCH \n $
PROMPT="
%{$fg[white]%}λ\
%{$terminfo[bold]$fg[blue]%}%{$reset_color%} \
%{$fg[cyan]%}%n \
%{$fg[black]%}in \
%{$terminfo[bold]$fg[yellow]%}%c%{$reset_color%}\
${git_info}
%{$terminfo[bold]$fg[red]%}_ %{$reset_color%}"
