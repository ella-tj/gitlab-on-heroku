FROM heroku/heroku:16

ADD entrypoint.sh /entrypoint.sh

RUN sudo apt-get install curl openssh-server ca-certificates postfix && \
    curl -sS http://packages.gitlab.cc/install/gitlab-ce/script.deb.sh | sudo bash && \
    sudo apt-get update &&\ 
    sudo apt-get install gitlab-ce && \

CMD /entrypoint.sh
