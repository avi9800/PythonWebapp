pipeline {
    agent any

    stages {
        stage ('Build') {
            steps {
                sh '''
                echo $GIT_BRANCH
                fullname="webapp_$GIT_BRANCH"
                docker build -t $fullname . --no-cache
                docker images 
                '''
            }
        }
    }
}
