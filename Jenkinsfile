pipeline {
    agent any
    
	stages {
        stage ('Checkout'){
            git 'https://github.com/brenomartins-ciandt/Jenkins-rep'
        }
        stage ('Getting prerequisites'){
            sh 'sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose'
            sh 'sudo chmod +x /usr/local/bin/docker-compose'
        }
        stage ('Building application image'){
            sh 'docker build -t aplic_java2 -f /home/brenomartins/Teste/Dockerfile .'
        }
        stage ('Compose Stage'){
            sh 'docker-compose -f /home/brenomartins/Teste/docker-compose.yml up'
        }

        stage ('Setting BD'){
            sh 'psql    --host=localhost    --port=5555    --username=postgres    --password   --file acesso_init.sql'
        }
    }
}
