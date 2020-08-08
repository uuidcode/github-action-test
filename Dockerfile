FROM uuidcode/java

ARG workspaceDir=/github/workspace

RUN mkdir -p ${workspaceDir}

COPY pom.xml ${workspaceDir}/pom.xml
COPY src ${workspaceDir}/src

WORKDIR ${workspaceDir}

ENTRYPOINT mvn test -Dtest=HelloWordTest#test -f ${workspaceDir}/pom.xml