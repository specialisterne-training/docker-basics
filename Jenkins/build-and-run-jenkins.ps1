export JENKINS_VOLUME=jenkins_build_artifacts
export JENKINS_DOCKER_NAME=jenkins-with-dotnet-5:0.1
docker build -t ${JENKINS_DOCKER_NAME} -f Jenkins/Dockerfile .
docker run -dp 8080:8080 -v ${JENKINS_VOLUME}:/var/jenkins_home ${JENKINS_DOCKER_NAME}
