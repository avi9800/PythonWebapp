pipeline {
    agent any

    stages {
        stage ('Build') {
            steps {
                sh '''
                echo $GIT_BRANCH|awk -F '/' '{print $2}'
                '''
            }
        }
    }
}