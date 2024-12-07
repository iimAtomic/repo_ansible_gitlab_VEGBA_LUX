FROM debian:12

RUN apt-get update && apt-get install -y \
    curl \
    openssh-server \
    ca-certificates \
    vim \
    net-tools \
    && apt-get clean

RUN curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash && \
    apt-get install -y gitlab-ce

EXPOSE 80 443 22

CMD ["/opt/gitlab/embedded/bin/runsvdir-start"]
