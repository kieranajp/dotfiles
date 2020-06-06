set fish_key_bindings fish_hybrid_key_bindings
set -x fish_greeting ''

set -x BROWSER /usr/bin/vivaldi-stable
set -x EDITOR /usr/bin/vim

set -x SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket

set -x ANSIBLE_VAULT_PASSWORD_FILE ~/.vault-password

set -x XDG_CONFIG_HOME $HOME/.config
set -x PATH /usr/local/bin $PATH
set -x PATH $HOME/.local/bin $PATH
set -x PATH $HOME/.local/npm/bin $PATH
set -x PATH $XDG_CONFIG_HOME/composer/vendor/bin $PATH
set -x PATH $GOPATH/bin $PATH
set -x PATH vendor/bin $PATH

set -x GDK_SCALE 2
set -x GDK_DPI_SCALE 0.5
set -x QT_AUTO_SCREEN_SCALE_FACTOR 1

if status --is-interactive
    keychain --quiet --agents ssh
end

begin
    set -l HOSTNAME (hostname)
    if test -f ~/.keychain/$HOSTNAME-fish
        source ~/.keychain/$HOSTNAME-fish
    end
end
source /opt/asdf-vm/asdf.fish
