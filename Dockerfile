FROM docker.pkg.github.com/dock0/ssh/ssh:20210316-7c9647f
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm --needed cpio dnsutils htop lockfile-progs lsof mtr net-tools whois zsh neovim
RUN usermod --shell /usr/bin/zsh $ADMIN
RUN su - $ADMIN -c "git clone git://github.com/akerl/....git /home/$ADMIN/..."
RUN su - $ADMIN -c '.../... conf https://raw.githubusercontent.com/akerl/dotfiles/master/.dotdotdot.conf'
RUN su - $ADMIN -c '.../... supi'
