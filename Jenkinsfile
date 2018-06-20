pipeline {
    
    stages {
        agent {
        docker {
            image 'python:3.6.4' 
        }
    }
        stage('Install packages') { 
            
            steps {
                sh 'pip install --no-cache-dir -r requirements.txt' 
            }
        }
        agent {
        docker {
            image 'python:3.6.4' 
        }
    }
        stage('Test') { 
            steps {
                sh 'python3 -m unittest discover --verbose' 
            }
        }
        
        stage('Build docker image') {
            agent { docker {
                image 'benhall/dind-jenkins-agent:latest'
            } }
            steps {
                sh 'docker ps'   
            }
        }
    }
}
