@Library('global-pipeline') _

pipeline {
    agent any 

    stages {
        stage('Terraform Init') {
            steps {
                script {
                    common.initialize()
                }
            }
        }
        // Add more stages as needed
    }
}

