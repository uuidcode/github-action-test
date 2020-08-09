FROM uuidcode/java

ARG workspaceDir=/build/workspace

RUN mkdir -p ${workspaceDir}

COPY pom.xml ${workspaceDir}/pom.xml
COPY src ${workspaceDir}/src

RUN printevn

ENTRYPOINT mvn clean test -X -Dtest=HelloWorldTest#test -f ${GITHUB_WORKSPACE}/pom.xml