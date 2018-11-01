local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local git_show='$(git_prompt_info)$(git_prompt_status)%{$reset_color%}'
#local svn_show='$(svn_prompt_info)%{$reset_color%}'
local hg_show='$(hg_prompt_info)%{$reset_color%}'
#local rvm_ruby='%{$fg[red]%}‹$(~/.rvm/bin/rvm-prompt i v g)›%{$reset_color%}'
#local git_branch='$(git_prompt_info)%{$reset_color%}'
#local hg_branch='$(hg_prompt_info)%{$reset_color%}'
 
# === uncomment if git-only === BGEIN
# PROMPT="┌─${user_host} ${current_dir}
PROMPT="┌─${user_host} ${current_dir}%b ${git_show}
└─%B$%b "
RPROMPT="%f${return_code}%{$reset_color%}"
# === uncomment if git-only === END 
 
# === git and hg === BGEIN
#PROMPT='╭${user_host} ${current_dir}%b $(git_prompt_info)$(hg_prompt_info)$(git_prompt_status)$(hg_prompt_status)%{$fg[yellow]%} %{$reset_color%}
#PROMPT="╭${user_host} ${current_dir}%b ${git_show}${hg_show}
#╰%B$%b "
#RPROMPT="%f${return_code}%{$reset_color%}"
# === git and hg === END
 
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}±|%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%}|%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}%B✘"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[red]%}+"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[red]%}%"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}x"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[red]%}?"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[red]%}*"

ZSH_THEME_SVN_PROMPT_PREFIX="%{$fg[yellow]%}[SVN: %{$fg[magenta]%}"
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$fg[yellow]%}]%{$reset_color%}"
ZSH_THEME_SVN_PROMPT_DIRTY=" %{$fg[red]%}%B✘"
ZSH_THEME_SVN_PROMPT_CLEAN=" %{$fg[green]%}✔"
 
ZSH_THEME_HG_PROMPT_PREFIX="%{$fg[yellow]%}☿|%{$fg[red]%}"
ZSH_THEME_HG_PROMPT_SUFFIX="%{$fg[yellow]%}|%{$reset_color%}"
ZSH_THEME_HG_PROMPT_DIRTY=" %{$fg[red]%}%B✘"
ZSH_THEME_HG_PROMPT_CLEAN=" %{$fg[green]%}✔"
ZSH_THEME_HG_PROMPT_MODIFIED="%{$fg[red]%}!"
ZSH_THEME_HG_PROMPT_ADDED="%{$fg[red]%}+"
ZSH_THEME_HG_PROMPT_UNTRACKED="%{$fg[red]%}?"
ZSH_THEME_HG_PROMPT_DELETED="%{$fg[red]%}x"

