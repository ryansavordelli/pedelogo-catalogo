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
                sh 'chmod 0755 k8s/config.sh'
//                sh './k8s/config.sh'
                sh '''#!/bin/bash
                      source k8s/config.sh
                   '''
                sh 'testeFunction'
            }
        }
    }
}