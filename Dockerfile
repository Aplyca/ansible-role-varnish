# Varnish from Ubuntu image

FROM ubuntu
MAINTAINER Mauricio Sánchez <msanchez@aplyca.com> from Aplyca SAS 

RUN apt-get update -qq && \
  apt-get upgrade -yqq && \
  apt-get -yqq install varnish && \
  apt-get -yqq clean
  
EXPOSE 80

ADD start.sh /start.sh
RUN chmod -Rf 777 /start.sh
CMD ["/start.sh"]
