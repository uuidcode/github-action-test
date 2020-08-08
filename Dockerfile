FROM uuidcode/java

ARG workspaceDir=/build/workspace

RUN mkdir -p ${workspaceDir}

COPY pom.xml ${workspaceDir}/pom.xml
COPY src ${workspaceDir}/src

WORKDIR ${workspaceDir}

ENTRYPOINT ["mvn", "clean", "test", "-X", "-Dtest=HelloWordTest#test", "-f", "/github/workspace/pom.xml"]