pipeline {
    agent any
    
	stages {
        stage ('Building application image'){
            steps {
                sh 'docker build -t aplic_java2 -f /home/brenomartins/Teste/Dockerfile .'
            }
        }
        stage ('Compose Stage'){
            steps {
                sh 'docker-compose -f /home/brenomartins/Teste/docker-compose.yml up'
            }
        }

        #stage ('Setting BD'){
         #   steps{
          #      sh 'psql    --host=localhost    --port=5555    --username=postgres    --password   --file acesso_init.sql'
           # }
        #}
    }
}
