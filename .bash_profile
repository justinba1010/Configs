. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

export LDFLAGS="-L/usr/local/opt/openssl/lib -L/usr/local/lib -L/usr/local/opt/expat/lib"
export CFLAGS="-I/usr/local/opt/openssl/include/ -I/usr/local/include -I/usr/local/opt/expat/include"
export CPPFLAGS="-I/usr/local/opt/openssl/include/ -I/usr/local/include -I/usr/local/opt/expat/include"


# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Change looks
export PS1='\u | [\w]$ '

export GPG_TTY=$(tty)

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# opam configuration
test -r /Users/justinbaum/.opam/opam-init/init.sh && . /Users/justinbaum/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
