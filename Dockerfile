
FROM debian:12


RUN apt-get update && apt-get install -y \
    curl \
    openssh-server \
    ca-certificates \
    vim \
    net-tools \
    tzdata \
    locales \
    && apt-get clean

ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen


RUN curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash && \
    apt-get install -y gitlab-ce && \
    apt-get clean


EXPOSE 80 443 22


VOLUME ["/etc/gitlab", "/var/opt/gitlab", "/var/log/gitlab"]


CMD ["/opt/gitlab/embedded/bin/runsvdir-start"]
