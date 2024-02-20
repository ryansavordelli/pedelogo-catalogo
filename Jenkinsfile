pipeline { 
    agent any



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

        stage('Deploy nginx') {
            steps {
                sh 'kubectl apply -f k8s/deploy.yaml'
            }
        }
    }
}