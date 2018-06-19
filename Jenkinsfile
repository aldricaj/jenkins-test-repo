pipeline {
    agent none 
    stages {
        stage('Build') { 
            agent {
                docker {
                    image 'python:3.6.4' 
                }
            }
            steps {
                sh 'python3 -c "print(\'Hello\')"' 
            }
        }
    }
}