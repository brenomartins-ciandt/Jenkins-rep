pipeline {
    agent any
    
	stages {
        stage ('Checkout'){
            steps {
                git url: 'https://github.com/brenomartins-ciandt/Jenkins-rep.git'
            }
        }
        stage ('Getting prerequisites'){
            steps {
                sh 'sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose'
                sh 'sudo chmod +x /home/brenomartins/Teste/docker-compose.yml'
            }
        }
        stage ('Building application image'){
            steps {
                sh 'docker build -t aplic_java2 -f Dockerfile .'
            }
        }
        stage ('Compose Stage'){
            steps {
                sh 'docker-compose -f docker-compose.yml up -d'
            }
        }

        stage ('Setting BD'){
            steps {
                sh 'psql    --host=localhost    --port=5555    --username=postgres    --password   --file acesso_init.sql'
            }
        }
    }
}
