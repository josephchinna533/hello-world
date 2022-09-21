pipeline { 
    agent any 
    stages {
        stage('clean'){
            steps{
                cleanWs()
            }
        }
        stage('clone') { 
            steps { 
                //sh 'git clone https://github.com/josephchinna533/hello-world.git' 
                git 'https://github.com/josephchinna533/hello-world.git'
            }
        }
        stage('Build'){
            steps {
                sh 'mvn clean package'
                sh 'docker build -t hello-world:1.0 .'
                sh 'docker stop hello-world && docker rm hello-world'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -d -it --name hello-world -p 8082:8080 hello-world:1.0'
            }
        }
    }
}
