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
                sh 'cp k8s/config.yaml ~/.kube/config'
                sh 'kubectl get pods --all-namespaces'
            }
        }

    }
}