# To run
# docker run -p 7788:3128 -ti dgageot/netflix squid -N

FROM google/debian:wheezy
MAINTAINER David Gageot <david@gageot.net>

ENV DEBIAN_FRONTEND noninteractive

# From instructions here: http://www.ruchirablog.com/how-to-setup-fully-secure-squid-proxy-netflix-pandora-hulu/

# Install dependencies
RUN apt-get update -qq

# Install squid
RUN apt-get install -yqq apache2-utils
RUN apt-get install -yqq squid3

# Configure
RUN touch /etc/squid3/users
RUN htpasswd -cb /etc/squid3/users didier pwd
COPY squid.conf /etc/squid3/squid.conf

EXPOSE 3128
ENTRYPOINT ["/usr/sbin/squid3", "-N"]