pipeline {
    agent any
    environment {
        DOCKER_REPO = 'avi9800/webapp'
    }
    stages {
        stage ('Build') {
            steps {
                sh '''
                tag="$BUILD_NUMBER_$GIT_BRANCH"
                docker build -t $DOCKER_REPO:$tag . --no-cache
                '''
            }
        }
    }
}
