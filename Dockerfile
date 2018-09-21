FROM postgres:9.6
RUN localedef -i en_GB -c -f UTF-8 -A /usr/share/locale/locale.alias en_GB.UTF-8
ENV LANG eb_GB.utf8
ENV LC_ALL en_GB.UTF-8
ENV LC_CTYPE en_GB.UTF-8
ADD ./data/postgresql /var/lib/postgresql
RUN ["chmod", "-R", "777", "/var/lib/postgresql"]