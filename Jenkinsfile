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
                sh 'cp k8s/config.yaml ~/.kube/config'
            }
        }

        stage('Deploy in k8s dev') {
            steps {
                input 'Do you approve deployment?'
                sh 'chmod 0755 k8s/config.sh'
                sh '''#!/bin/bash
                      source k8s/config.sh
                      export ENV_DEPLOY='dev'
                      configDeploy
                   '''
                sh 'kubectl apply -f k8s/deploy.yaml'
            }
        }

        stage('Destroy dev') {
            steps {
                input 'Do you approve deployment?'
                sh '''#!/bin/bash
                      source k8s/config.sh
                      export ENV_DEPLOY='dev'
                      configDeploy
                   '''
                sh 'kubectl delete -f k8s/deploy.yaml'
            }
        }


        stage('Deploy in k8s prd') {
            steps {
                input 'Do you approve deployment?'
                sh 'chmod 0755 k8s/config.sh'
                sh '''#!/bin/bash
                      source k8s/config.sh
                      export ENV_DEPLOY='outro'
                      configDeploy
                   '''
                sh 'kubectl apply -f k8s/deploy.yaml'
            }
        }

        stage('Destroy prd') {
            steps {
                input 'Do you approve deployment?'
                sh '''#!/bin/bash
                      source k8s/config.sh
                      export ENV_DEPLOY='outro'
                      configDeploy
                   '''
                sh 'kubectl delete -f k8s/deploy.yaml'
            }
        }

    }
}