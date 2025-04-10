# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc


# Power Line
if [ -f `which powerline-daemon` ]; then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    . /usr/share/powerline/bash/powerline.sh
fi



# Aggiungi CLion al PATH
export PATH=$PATH:~/Applicazioni/clion-2024.2.2/bin

# Aggiungi IntelliJ IDEA al PATH
export PATH=$PATH:~/Applicazioni/idea-IU-242.23339.11/bin





# Docker Kali-Linux
alias obsidian='/home/oudeys/Applicazioni/Obsidian-1.6.7-arm64.AppImage'
alias kali="sudo docker start -i kali"
alias obsidian='/home/oudeys/Applicazioni/Obsidian-1.6.7-arm64.AppImage'


