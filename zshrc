# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man-pages colorize fd gitignore rust z vscode zsh-autosuggestions fast-syntax-highlighting zsh-autocomplete)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# Example aliases
alias zconf="code ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias updatemac="softwareupdate -ia && brew update && brew upgrade && brew cleanup"
alias gs="git status"
alias ga="git add --all"
alias gai="git add -i"
#############
alias gap="git apply"
alias gas="git apply --stat"
alias gac="git apply --check"
# #############
alias gama="git am --abort"
alias gamr="git am --resolved"
alias gams="git am --skip"
# #############
alias gb="git branch"
alias gba="git branch -a"
alias gbd="git branch -d"
alias gbdd="git branch -D"
alias gbr="git branch -r"
alias gbc="git rev-parse --abbrev-ref HEAD"
# alias gbu=!git rev-parse --abbrev-ref --symbolic-full-name "@{u}"
# alias gbs= !git-branch-status
#############
alias gc="git commit"
alias gca="git commit -a"
alias gcam="git commit -am"
alias gcem="git commit --allow-empty -m"
alias gcd="git commit --amend"
alias gcad="git commit -a --amend"
alias gced="git commit --allow-empty --amend"
# #############
alias gcl="git clone"
alias gcld="git clone --depth 1"
# alias gclg = !sh -c 'git clone git://github.com/$1 $(basename $1)' -
# alias gclgp = !sh -c 'git clone git@github.com:$1 $(basename $1)' -
# alias gclgu = !sh -c 'git clone git@github.com:$(git config --get user.username)/$1 $1' -
# #############
alias gcp="git cherry-pick"
alias gcpa="git cherry-pick --abort"
alias gcpc="git cherry-pick --continue"
# #############
alias gd="git diff"
alias gdp="git diff --patience"
alias gdc="git diff --cached"
alias gdk="git diff --check"
alias gdck="git diff --cached --check"
alias gdt="git difftool"
alias gdct="git difftool --cached"
# #############
alias gf="git fetch"
alias gfo="git fetch origin"
alias gfu="git fetch upstream"
# #############
alias gfp="git format-patch"
# #############
alias gfk="git fsck"
# #############
alias gg="git grep -p"
# #############
alias gl="git log --oneline"
alias glg="git log --oneline --graph --decorate"
# #############
# alias gls = ls-files
# alias glsf = !git ls-files | grep -i
# #############
alias gm="git merge"
alias gma="git merge --abort"
alias gmc="git merge --continue"
alias gms="git merge --skip"
# #############
alias go="git checkout"
alias gom="git checkout master"
alias gob="git checkout -b"
# alias gopr = !sh -c 'git fo pull/$1/head:pr-$1 && git o pr-$1'
# #############
# alias gpr = prune -v
# #############
# alias gps = push
# alias gpsf = push -f
# alias gpsu = push -u
# alias gpst = push --tags
# #############
# alias gpso = push origin
# alias gpsao = push --all origin
# alias gpsfo = push -f origin
# alias gpsuo = push -u origin
#############
# alias 	psom = push origin master
# alias 	psaom = push --all origin master
# alias 	psfom = push -f origin master
# alias 	psuom = push -u origin master
# alias 	psoc = !git push origin $(git bc)
# alias 	psaoc = !git push --all origin $(git bc)
# alias 	psfoc = !git push -f origin $(git bc)
# alias 	psuoc = !git push -u origin $(git bc)
# alias 	psdc = !git push origin :$(git bc)
# alias 	#############
# alias 	pl = pull
# alias 	pb = pull --rebase
# alias 	#############
# alias 	plo = pull origin
# alias 	pbo = pull --rebase origin
# alias 	plom = pull origin master
# alias 	ploc = !git pull origin $(git bc)
# alias 	pbom = pull --rebase origin master
# alias 	pboc = !git pull --rebase origin $(git bc)
# alias 	#############
# alias 	plu = pull upstream
# alias 	plum = pull upstream master
# alias 	pluc = !git pull upstream $(git bc)
# alias 	pbum = pull --rebase upstream master
# alias 	pbuc = !git pull --rebase upstream $(git bc)
# alias 	#############
# alias 	rb = rebase
# alias 	rba = rebase --abort
# alias 	rbc = rebase --continue
# alias 	rbi = rebase --interactive
# alias 	rbs = rebase --skip
# alias 	#############
# alias 	re = reset
# alias 	rh = reset HEAD
# alias 	reh = reset --hard
# alias 	rem = reset --mixed
# alias 	res = reset --soft
# alias 	rehh = reset --hard HEAD
# alias 	remh = reset --mixed HEAD
# alias 	resh = reset --soft HEAD
# alias 	rehom = reset --hard origin/master
# alias 	#############
# alias 	r = remote
# alias 	ra = remote add
# alias 	rr = remote rm
# alias 	rv = remote -v
# alias 	rn = remote rename
# alias 	rp = remote prune
# alias 	rs = remote show
# alias 	rao = remote add origin
# alias 	rau = remote add upstream
# alias 	rro = remote remove origin
# alias 	rru = remote remove upstream
# alias 	rso = remote show origin
# alias 	rsu = remote show upstream
# alias 	rpo = remote prune origin
# alias 	rpu = remote prune upstream
# alias 	#############
# alias 	rmf = rm -f
# alias 	rmrf = rm -r -f
# alias 	#############
# alias 	s = status
# alias 	sb = status -s -b
# alias 	#############
# alias 	sa = stash apply
# alias 	sc = stash clear
# alias 	sd = stash drop
# alias 	sl = stash list
# alias 	sp = stash pop
# alias 	ss = stash save
# alias 	ssk = stash save -k
# alias 	sw = stash show
# alias 	st = !git stash list | wc -l 2>/dev/null | grep -oEi '[0-9][0-9]*'
# alias 	#############
# alias 	t = tag
# alias 	td = tag -d
# alias 	#############
# alias 	w = show
# alias 	wp = show -p
# alias 	wr = show -p --no-color
# alias 	#############
# alias 	svnr = svn rebase
# alias 	svnd = svn dcommit
# alias 	svnl = svn log --oneline --show-commit
# alias 	#############
# alias 	subadd = !sh -c 'git submodule add git://github.com/$1 $2/$(basename $1)' -
# alias 	subrm = !sh -c 'git submodule deinit -f -- $1 && rm -rf .git/modules/$1 && git rm -f $1' -
# alias 	subup = submodule update --init --recursive
# alias 	subpull = !git submodule foreach git pull --tags -f origin master
# alias 	#############
# alias 	assume = update-index --assume-unchanged
# alias 	unassume = update-index --no-assume-unchanged
# alias 	assumed = !git ls -v | grep ^h | cut -c 3-
# alias 	unassumeall = !git assumed | xargs git unassume
# alias 	assumeall = !git status -s | awk {'print $2'} | xargs git assume
# alias 	#############
# alias 	bump = !sh -c 'git commit -am \"Version bump v$1\" && git psuoc && git release $1' -
# alias 	release = !sh -c 'git tag v$1 && git pst' -
# alias 	unrelease = !sh -c 'git tag -d v$1 && git pso :v$1' -
# alias 	merged = !sh -c 'git o master && git plom && git bd $1 && git rpo' -
# alias 	aliases = !git config -l | grep alias | cut -c 7-
# alias 	snap = !git stash save 'snapshot: $(date)' && git stash apply 'stash@{0}'
# alias 	bare = !sh -c 'git symbolic-ref HEAD refs/heads/$1 && git rm --cached -r . && git clean -xfd' -
# alias 	whois = !sh -c 'git log -i -1 --author=\"$1\" --pretty=\"format:%an <%ae>\"' -
# alias 	serve = daemon --reuseaddr --verbose --base-path=. --export-all ./.git
# alias 	#############
# alias 	behind = !git rev-list --left-only --count $(git bu)...HEAD
# alias 	ahead = !git rev-list --right-only --count $(git bu)...HEAD
# alias 	#############
# alias 	ours = "!f() { git checkout --ours $@ && git add $@; }; f"
# alias 	theirs = "!f() { git checkout --theirs $@ && git add $@; }; f"
# alias 	subrepo = !sh -c 'git filter-branch --prune-empty --subdirectory-filter $1 master' -
# alias 	human = name-rev --name-only --refs=refs/heads/*