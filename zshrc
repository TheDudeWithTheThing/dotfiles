# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git heroku brew rake bundler)

source $ZSH/oh-my-zsh.sh

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

source ~/.exports
source ~/.aliases

eval "$(rbenv init -)"

source /usr/local/share/zsh/site-functions/_aws

mkv_to_mp4() {
  if [[ $# -ge 1 ]]; then
    local infile=$1
    local outfile=${(S)infile/mkv/mp4}
    echo $1
    echo $outfile
    ffmpeg -i "$infile" -c:v copy -c:a libfdk_aac -b:a 128k ~/"$outfile"
  else
    print "What file?"
  fi
}
