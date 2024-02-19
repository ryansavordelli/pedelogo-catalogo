pipeline { 
    agent any



    stages {
        stage('Get Source') {
            steps {
                git url: 'https://github.com/ryansavordelli/pedelogo-catalogo.git', branch: 'main'
            }
        }

        stage('Deploy') {
            agent {
                kubernetes {
                    cloud: 'kubernetes'
                }
            }
            steps {
                kubernetesDeploy(
                    configs: 'k8s/deploy.yaml',
                    kubeconfigId: 'kube'
                )
            }
        }
    }
}