export PATH=~/bin:$PATH
export LANG=en_US.UTF-8
export EDITOR=vim
setopt histignorespace
setopt hist_verify
setopt nocorrect
setopt NO_MULTIOS
setopt PUSHD_SILENT
setopt PUSHD_IGNORE_DUPS
setopt IGNORE_EOF
DIRSTACKSIZE=10
setopt AUTO_PUSHD
setopt glob_complete
setopt CSH_NULL_GLOB
zmodload zsh/complist
setopt nocorrect_all
setopt GLOB_SUBST
setopt extended_glob
fpath=(/usr/local/share/zsh-completions $fpath)
bindkey -M menuselect '^s' vi-insert
bindkey -M menuselect '^r' vi-insert
alias ql='qlmanage -p "$@" >& /dev/null'
alias safari='open -a Safari'
alias chrome='open -a Google\ Chrome'
alias audacity='open -a Audacity'
alias vi='vim -p'
alias ls='ls -FG'
alias grep='grep --color=auto'
alias mv='mv -i'
alias pd='cd ../'
function sp() {
  builtin echo -En "$(builtin echo -En "$(pwd)")"'/'"$1" | tmux load-buffer -
}
function pb() {
  tmux save-buffer -
}
function a() {
  while [ ! -d .git -a $(pwd) != '/' ]
  do
    cd ..
  done
}


autoload -U zmv
alias zmv='noglob zmv -W'
#TODO dictionary.py from tmux 
autoload -U colors
colors
PROMPT="%(?..%F{red}%? %f)%{${fg[black]}%}%~%{${reset_color}%}"$'\n'"%{${fg[black]}%}%n@%M %{${fg[cyan]}%}%(!.>>.❯) %{${fg[reset_color]}%}"
PROMPT2="%{${fg[magenta]}%}%_> %{${reset_color}%}"
SPROMPT="%{${fg[red]}%}correct: %R -> %r [nyae]? %{${reset_color}%}"
setopt prompt_subst
#RPROMPT="%(?..%F{red}%? %f)%{${bg[black]}%}%{${fg[blue]}"'$([ -n "$(git status --porcelain 2>/dev/null)" ]&&echo ${fg[red]})%}$(git status -bs 2>/dev/null|grep "##"|head -n 1|tr -d "# \n")'"%{${bg[red]}%}%{${fg[blue]}%}%1(j.JOBS.)%{${reset_color}%}"


stty erase '^h'
# d default
# e emacs
# v vi
bindkey -e
# Emacs-style
bindkey "^A" beginning-of-line
bindkey "^B" backward-char
bindkey "^D" delete-char-or-list
bindkey "^E" end-of-line
bindkey "^F" forward-char
bindkey "^G" send-break # ignore already input command and go to the next line
bindkey "^I" expand-or-complete
#bindkey "^J" accept-line
bindkey "^K" kill-line
bindkey "^L" clear-screen
bindkey "^M" accept-line
#bindkey "^O" accept-line-and-down-history
#bindkey "^Q" push-line
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward
#bindkey "^T" transpose-chars
bindkey "^U" kill-whole-line
bindkey "^V" quoted-insert
bindkey "^W" backward-kill-word

bindkey "^N" history-beginning-search-forward
bindkey "^P" history-beginning-search-backward

setopt no_flow_control
##### completion #####
autoload -Uz compinit
compinit
#補完のときプロンプトの位置を変えない
setopt always_last_prompt
#補完候補が複数あるとき自動でメニューをリストアップ
setopt auto_list
#補完要求に対してメニューをリストアップ
setopt auto_menu
#補完候補を詰めて表示する
setopt list_packed
#補完の表示を水平方向に
setopt list_rows_first
#補完候補の表示を親切に ls -F
# /がディレクトリ
# @がシンボリックリンク
setopt list_types
# tabキーの節約
setopt menu_complete
#エイリアスに対して別の補完定義を telnet tt
#setopt complete_aliases
setopt no_complete_aliases
#ディレクトリ 補完 /を付与
setopt auto_param_slash
#スペースで /を削除
setopt auto_remove_slash
#補完候補表示時にビープ音をならさない
setopt nolistbeep
setopt print_eight_bit
setopt transient_rprompt
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*:default' list-colors ""
setopt magic_equal_subst
WORDCHARS=${WORDCHARS:s,/,,}
## 補完候補がなければより曖昧に候補を探す。
#### m:{a-z}={A-Z}: 小文字を大文字に変えたものでも補完する。
#### r:|[._-]=*: 「.」「_」「-」の前にワイルドカード「*」があるものとして補完する。
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z} r:|[._-]=*'

. /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. <(npm completion)
eval "$(direnv hook zsh)"

#zmodload zsh/mapfile
#proverbs=(${(@f)mapfile[$HOME/PROVERBS]})
#RPROMPT='%{${bg[reset_color]}%}%{${fg[black]}%}${proverbs[(($RANDOM % ${#proverbs} + 1))]}%{${fg[reset_color]}%}'
disable r # 'r' command should launch "GNU R" (statistical computing language)

#
# Show branch name in Zsh's right prompt
#

autoload -Uz VCS_INFO_get_data_git; VCS_INFO_get_data_git 2> /dev/null

setopt prompt_subst

function rprompt-git-current-branch {
        local name st color gitdir action
        if [[ "$PWD" =~ '/\.git(/.*)?$' ]]; then
                return
        fi
        name=`git rev-parse --abbrev-ref=loose HEAD 2> /dev/null`
        if [[ -z $name ]]; then
                return
        fi

        gitdir=`git rev-parse --git-dir 2> /dev/null`
        action=`VCS_INFO_git_getaction "$gitdir"` && action="($action)"

        st=`git status 2> /dev/null`
	if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
                color=%F{green}
	elif [[ -n `echo "$st" | grep "^no changes added"` ]]; then
                color=%F{yellow}
	elif [[ -n `echo "$st" | grep "^# Changes to be committed"` ]]; then
                color=%B%F{red}
        else
                color=%F{red}
        fi

        echo "$color$name$action%f%b "
}

RPROMPT='[`rprompt-git-current-branch`%~]'
export GOPATH=~/go
export PATH=~/go/bin:$PATH
source `brew --prefix`/etc/profile.d/z.sh

# zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "b4b4r07/enhancd", use:init.sh
ENHANCD_DISABLE_HOME=1
zplug load
