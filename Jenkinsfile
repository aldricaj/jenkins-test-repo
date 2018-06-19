pipeline {
    agent {
        docker {
            image 'python:3.6.4' 
        }
    }
    stages {
        stage('Install packages') { 
            
            steps {
                sh 'pip install --no-cache-dir -r requirements.txt' 
            }
        }
        stage('Test') { 
            steps {
                sh 'python3 -m unittest discover --verbose' 
            }
        }
        stage('Create Dockerfile') {
            steps {
                sh 'docker build .'
            }
        }
    }
}