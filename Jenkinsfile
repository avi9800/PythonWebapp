pipeline {
    agent any
    stages {
        stage ('Build') {
            steps {
                sh '''
                docker login --username avi9800 --password Nidhikhan412@
                docker build -t avi9800/webapp:$BUILD_NUMBER_$GIT_BRANCH . --no-cache
                docker rmi avi9800/webapp:$BUILD_NUMBER_$GIT_BRANCH --force
                '''
            }
        }
    }
}
