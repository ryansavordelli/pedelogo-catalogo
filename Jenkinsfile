pipeline { 
    agent any



    stages {
        stage('Get Source') {
            steps {
                git url: 'https://github.com/ryansavordelli/pedelogo-catalogo.git', branch: 'main'
            }
        }

        stage('Kubectl') {
            steps {
                kubectl get pods
            }
        }

    }
}