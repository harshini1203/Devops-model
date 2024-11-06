pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build and Deploy') {
            steps {
                script {
                    def environment = BRANCH_NAME == 'main' ? 'production' : 'staging'
                    
                    // Stop and remove existing containers
                    sh "docker-compose -f docker-compose.${environment}.yml down || true"
                    
                    // Build and start new containers
                    sh "docker-compose -f docker-compose.${environment}.yml up -d --build"
                }
            }
        }
    }
}