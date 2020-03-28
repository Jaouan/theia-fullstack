FROM jaouan/java-js-buildtools

# Oh-my-zsh
RUN apt install -y zsh fonts-powerline \
    && sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
    && cd ~/.oh-my-zsh/custom/plugins \
    && git clone https://github.com/zsh-users/zsh-syntax-highlighting \
    && git clone https://github.com/zsh-users/zsh-autosuggestions
COPY ./zsh/zshrc /root/.zshrc
ENV SHELL=/bin/zsh

# Theia.
COPY ./theia /opt/theia
RUN . /root/.nvm/nvm.sh \
    && cd /opt/theia \
    && nvm install \
    && nvm use \
    && yarn \
    && yarn theia build

# Demo.
COPY ./demo /root/workspace/demo

# Run !
COPY ./run.sh /root/run.sh
EXPOSE 8500
VOLUME /root/workspace
ENTRYPOINT []
CMD ["/bin/bash", "-e", "/root/run.sh"]
