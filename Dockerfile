FROM java:alpine
RUN apk add --update wget
RUN wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-2.6.1.zip
RUN unzip sonar-scanner-2.6.1
RUN cd /usr/bin && ln -s /sonar-scanner-2.6.1/bin/sonar-scanner sonar-scanner
CMD sonar-scanner
