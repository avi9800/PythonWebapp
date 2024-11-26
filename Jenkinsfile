pipeline {
    agent any

    stages {
        stage ('Build') {
            steps {
                sh '''
                echo $GIT_BRANCH
                fullname="webapp_$GIT_BRANCH"
                docker build -t $fullname:$BUILD_NUMBER . --no-cache
                docker images 
                '''
            }
        }
    }
}
