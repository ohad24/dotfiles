FROM ubuntu:20.04

RUN apt -q update
RUN apt install -y sudo curl

ARG USER=ohad

# RUN useradd -ms /bin/bash -u 5501 -p "$(openssl passwd -1 1234)" $USER
RUN useradd -ms /bin/bash -u 5501 $USER
RUN usermod -aG sudo $USER
RUN echo $USER"     ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER 5501
WORKDIR /home/$USER

RUN curl -sSL https://raw.githubusercontent.com/ohad24/dotfiles/main/dotfiles-install.sh | sh

CMD ["/bin/zsh"]