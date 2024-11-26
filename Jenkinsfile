pipeline {
    agent any

    stages {
        stage ('Build') {
            steps {
                sh '''
                branch=$(echo $GIT_BRANCH|awk -F '/' '{print $2}')
                full_name="webapp_$branch"
                docker build -t $full_name .
                docker images 
                '''
            }
        }
    }
}