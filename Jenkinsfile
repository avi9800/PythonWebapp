pipeline {
    agent any

    stages {
        stage ('Build') {
            steps {
                sh '''
                branch=$(echo $GIT_BRANCH|awk -F '/' '{print $2}')
                full_name="webapp_$GIT_BRANCH"
                docker build -t $full_name .
                docker images 
                '''
            }
        }
    }
}