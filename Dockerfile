FROM uuidcode/java

ARG buildDir=/github-action-test/build

RUN mkdir -p ${buildDir}

COPY pom.xml ${buildDir}/pom.xml
COPY src ${buildDir}/src

WORKDIR ${buildDir}
CMD mvn test -Dtest=HelloWordTest#test