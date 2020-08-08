FROM uuidcode/java

ARG workspaceDir=/github/workspace

RUN mkdir -p ${workspaceDir}

COPY pom.xml ${workspaceDir}/pom.xml
COPY src ${workspaceDir}/src

WORKDIR ${workspaceDir}

CMD mvn test -Dtest=HelloWordTest#test