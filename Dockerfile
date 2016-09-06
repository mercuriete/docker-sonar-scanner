FROM java:alpine
ENV SONAR_SCANNER_VERSION 2.7
RUN apk add --update wget
RUN wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-${SONAR_SCANNER_VERSION}.zip
RUN unzip sonar-scanner-${SONAR_SCANNER_VERSION}
RUN cd /usr/bin && ln -s /sonar-scanner-${SONAR_SCANNER_VERSION}/bin/sonar-scanner sonar-scanner
CMD sonar-scanner
