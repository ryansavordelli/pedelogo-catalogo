pipeline { 
    agent any

    stages {
/*
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
*/
        stage('Inicial') {
            steps {
                sshagent(credentials: ['sshkey']) {
                  sh '''
                      mkdir /home/ryan/teste
                      echo 'Teste' > /home/ryan/teste/teste.txt
                   '''
                }
//                sh 'sshpass -p "022324" ssh ryan@192.168.57.5'
                echo 'Pipeline Finalizado'
                echo 'Mais um teste'
            }
        }
    }
}