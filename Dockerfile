# VERSION 1.1
# DOCKER-VERSION  1.2.0
# AUTHOR:         Richard Lee <lifuzu@gmail.com>
# DESCRIPTION:    Service-java8 Image Container

FROM dockerbase/service

# Run dockerbase script
ADD     java.sh /dockerbase/
RUN     /dockerbase/java.sh

ENV     JAVA_HOME /usr/local/java
ENV     JRE_HOME /usr/local/java/jre
ENV     PATH $PATH:$JAVA_HOME/bin:$JRE_HOME/bin

