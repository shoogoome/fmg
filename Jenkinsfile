pipeline {
    agent any

    stages {
        stage('update deploy file') {
            when {
                anyOf {
                  branch 'master';
                  branch 'dev';
                }
            }
            steps {
                sh 'cp /var/jenkins_home/deploy/pd/deploy.sh .'
            }
        }
        stage('update code and build') {
            steps {
                sh 'chmod 700 ./deploy.sh'
                sh './deploy.sh ${BRANCH_NAME}'
            }
        }
    }
}
