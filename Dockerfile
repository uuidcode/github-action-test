FROM alpine:3.10

ARG buildDir=/github-action-test/build

RUN mkdir -p ${buildDir}

COPY pom.xml ${buildDir}/pom.xml
COPY src ${buildDir}/src
COPY entrypoint.sh ${buildDir}/entrypoint.sh

WORKDIR ${buildDir}
CMD mvn test -Dtest=HelloWordTest#test