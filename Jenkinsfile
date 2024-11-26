pipeline {
    agent any

    stages {
        stage ('Build') {
            steps {
                sh '''
                echo $GIT_BRANCH
                docker build -t $full_name .
                docker images 
                '''
            }
        }
    }
}