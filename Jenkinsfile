pipeline { 
    agent any

    environment {
        HOST_POD = 'test-pod'
    }


    stages {
        stage('Get Source') {
            steps {
                git url: 'https://github.com/ryansavordelli/pedelogo-catalogo.git', branch: 'main'
            }
        }

        stage('Authentic cluster') {
            steps {
                sh './k8s/config.sh'
            }
        }
    }
}