pipeline { 
    agent any

    stages {
        stage('Get Source') {
            steps {
                git url: 'https://github.com/ryansavordelli/pedelogo-catalogo.git', branch: 'main'
            }
        }
        
        stage('Docker Build') {
            steps {
                script {
                    dockerapp = docker.build("ryansavordelli/pedelogo-catalogo:${env.BUILD_ID}",
                    '-f ./src/PedeLogo.Catalogo.Api/Dockerfile .' )
                }
            }
        }

        stage('Docker push image') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
                    dockerapp.push('latest')
                    dockerapp.push("${env.BUILD_ID}")
                    }
                }
            }
        }

        stage('Executando ssh e comando') {
            steps {
                script {
                    def remote = [:]
                    remote.name = 'machine'
                    remote.host = '192.168.57.5'
                    remote.user = 'ryan'
                    remote.password = '022324'
                    remote.allowAnyHosts = true
                    stage('Remote SSH') {
                      sshCommand remote: remote, command: "echo 'Teste' > teste.txt"
                      sshCommand remote: remote, command: "cat teste.txt"
                    }                    
                }
            }
        }
        stage('Inicial') {
            steps {
                echo 'Pipeline Finalizado'
                echo 'Mais um teste'
            }
        }
    }
}