FROM uuidcode/java

ARG workspaceDir=/build/workspace

RUN mkdir -p ${workspaceDir}

COPY pom.xml ${workspaceDir}/pom.xml
COPY src ${workspaceDir}/src

RUN printenv

ENTRYPOINT mvn clean test -X -Dtest=HelloWorldTest#test -f /build/workspace/pom.xml