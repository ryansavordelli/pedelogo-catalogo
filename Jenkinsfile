pipeline { 
    agent any

    environment {
        HOST_POD = 'test-pod'
        BRANCH_NAME = "${GIT_BRANCH.split("/")[1]}"
    }


    stages {
        stage('Get branch') {
            steps {
                sh "echo ${BRANCH_NAME}"
            }
        }


    }
}